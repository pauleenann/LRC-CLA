import React, { useEffect, useState, useCallback } from "react";
import axios from "axios";
// import { Search, Download, ChevronRight, ChevronLeft, XCircle } from "lucide-react";

const Audit = () => {
  const [audit, setAudit] = useState([]);
  const [filteredAudit, setFilteredAudit] = useState([]);
  const [loading, setLoading] = useState(false);
  const [selectedActivity, setSelectedActivity] = useState("");
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const recordsPerPage = 10;

  // Format timestamp using Intl.DateTimeFormat for better localization
  const formatTimestamp = useCallback((timestamp) => {
    try {
      return new Intl.DateTimeFormat('en-US', {
        month: '2-digit',
        day: '2-digit',
        year: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false
      }).format(new Date(timestamp));
    } catch (error) {
      console.error("Error formatting timestamp:", timestamp, error);
      return "Invalid timestamp";
    }
  }, []);

  // Fetch audit logs
  const getAudit = useCallback(async () => {
    try {
      setLoading(true);
      const response = await axios.get("http://localhost:3001/api/audit");
      const updatedAudit = response.data.map((item) => ({
        ...item,
        formatted_timestamp: formatTimestamp(item.action_timestamp),
      }));
      setAudit(updatedAudit);
      setFilteredAudit(updatedAudit);
    } catch (err) {
      console.error("Error fetching audit logs:", err.message);
    } finally {
      setLoading(false);
    }
  }, [formatTimestamp]);

  useEffect(() => {
    getAudit();
  }, [getAudit]);

  // Apply filters
  useEffect(() => {
    let filtered = audit;

    if (selectedActivity) {
      filtered = filtered.filter((item) => item.new_value.includes(selectedActivity));
    }

    if (startDate && endDate) {
      const start = new Date(startDate);
      const end = new Date(endDate);
      end.setHours(23, 59, 59, 999);

      filtered = filtered.filter((item) => {
        const itemDate = new Date(item.action_timestamp);
        return itemDate >= start && itemDate <= end;
      });
    }

    setFilteredAudit(filtered);
    setCurrentPage(1);
  }, [selectedActivity, startDate, endDate, audit]);

  // Clear filters
  const clearFilters = () => {
    setStartDate("");
    setEndDate("");
    setSelectedActivity("");
    setFilteredAudit(audit);
    setCurrentPage(1);
  };

  // Pagination logic
  const totalPages = Math.ceil(filteredAudit.length / recordsPerPage);
  const indexOfLastRecord = currentPage * recordsPerPage;
  const indexOfFirstRecord = indexOfLastRecord - recordsPerPage;
  const currentRecords = filteredAudit.slice(indexOfFirstRecord, indexOfLastRecord);

  const nextPage = () => setCurrentPage((prev) => Math.min(prev + 1, totalPages));
  const prevPage = () => setCurrentPage((prev) => Math.max(prev - 1, 1));

  // Format description for better readability
  const formatDescription = (description) => {
    return description.replace(/[{}"]/g, "").replace(/,/g, "\n");
  };

  // Export to CSV
  const exportToCSV = () => {
    if (filteredAudit.length === 0) {
      alert("No data to export.");
      return;
    }

    const header = ["User", "Action", "Description", "Timestamp"];
    const csvRows = [header.join(",")];

    filteredAudit.forEach((item) => {
      const row = [
        `"${item.user_id}"`,
        `"${item.action_type}"`,
        `"${formatDescription(item.new_value).replace(/\n/g, ";")}"`,
        `"${item.formatted_timestamp}"`
      ];
      csvRows.push(row.join(","));
    });

    const csvContent = "data:text/csv;charset=utf-8," + csvRows.join("\n");
    const encodedUri = encodeURI(csvContent);
    const link = document.createElement("a");
    link.setAttribute("href", encodedUri);
    link.setAttribute("download", `audit_log_${new Date().toISOString().split('T')[0]}.csv`);
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="container py-4 px-3 bg-light rounded-lg shadow-sm">
      <h1 className="mb-4 text-primary fw-bold">User Activity Log</h1>

      {loading ? (
        <div className="d-flex justify-content-center my-5">
          <div className="spinner-border text-primary" role="status">
            <span className="visually-hidden">Loading...</span>
          </div>
        </div>
      ) : (
        <>
          <div className="mb-4">
            {/* Filter Section */}
            <div className="row g-3">
              <div className="col-md-4">
                <div className="input-group">
                  <span className="input-group-text bg-white">
                    {/* <Search size={18} /> */}
                  </span>
                  <select
                    className="form-select border-start-0"
                    value={selectedActivity}
                    onChange={(e) => setSelectedActivity(e.target.value)}
                    aria-label="Filter by activity"
                  >
                    <option value="">Filter by activity</option>
                    <option value="Added a new user">Insert User</option>
                    <option value="Added a new resource">Insert Resource</option>
                    <option value="Edited a resource">Update Resource</option>
                    <option value="Added new patron">Insert Patron</option>
                    <option value="Edited a patron">Edited Patron</option>
                    <option value="borrowed a book">Borrowed Book</option>
                    <option value="returned a book">Returned Book</option>
                    <option value="Edited a user">Edited User</option>
                    <option value="Logged In">Login</option>
                    <option value="Logged Out">Logout</option>
                  </select>
                </div>
              </div>

              <div className="col-md-8">
                <div className="d-flex flex-wrap gap-2 justify-content-between">
                  <div className="d-flex align-items-center gap-2 flex-grow-1">
                    <input
                      type="date"
                      className="form-control"
                      value={startDate}
                      onChange={(e) => setStartDate(e.target.value)}
                      aria-label="Start date"
                    />
                    <span className="text-muted">to</span>
                    <input
                      type="date"
                      className="form-control"
                      value={endDate}
                      onChange={(e) => setEndDate(e.target.value)}
                      aria-label="End date"
                    />
                    <button
                      className="btn btn-outline-secondary d-flex align-items-center gap-1"
                      onClick={clearFilters}
                      aria-label="Clear filters"
                    >
                      {/* <XCircle size={16} /> */}
                      <span className="d-none d-md-inline">Clear</span>
                    </button>
                  </div>
                  
                  <button
                    className="btn btn-success d-flex align-items-center gap-2"
                    onClick={exportToCSV}
                    aria-label="Export to CSV"
                  >
                    {/* <Download size={16} /> */}
                    <span className="d-none d-md-inline">Export</span>
                  </button>
                </div>
              </div>
            </div>
          </div>

          {/* Table */}
          <div className="table-responsive shadow-sm rounded">
            <table className="table table-hover mb-0">
              <thead className="table-light">
                <tr>
                  <th scope="col">User</th>
                  <th scope="col">Action</th>
                  <th scope="col">Description</th>
                  <th scope="col">Timestamp</th>
                </tr>
              </thead>
              <tbody>
                {currentRecords.length > 0 ? (
                  currentRecords.map((item, index) => (
                    <tr key={index}>
                      <td>{item.user_id}</td>
                      <td>
                        <span className={`badge ${
                          item.action_type === "INSERT" ? "bg-success" :
                          item.action_type === "UPDATE" ? "bg-primary" :
                          item.action_type === "LOGIN" ? "bg-info" : 
                          item.action_type === "LOGOUT" ? "bg-secondary" : "bg-warning"
                        }`}>
                          {item.action_type}
                        </span>
                      </td>
                      <td style={{ whiteSpace: "pre-line" }}>{formatDescription(item.new_value)}</td>
                      <td>{item.formatted_timestamp}</td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan="4" className="text-center py-4 text-muted">
                      No records available
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          {/* Pagination */}
          <div className="d-flex justify-content-between align-items-center mt-3">
            <span className="text-muted">
              Page {currentPage} of {totalPages || 1}
            </span>
            <div className="btn-group">
              <button
                className="btn btn-outline-primary"
                disabled={currentPage === 1}
                onClick={prevPage}
                aria-label="Previous page"
              >
                {/* <ChevronLeft size={18} /> */}
              </button>
              <button
                className="btn btn-outline-primary"
                disabled={currentPage === totalPages || totalPages === 0}
                onClick={nextPage}
                aria-label="Next page"
              >
                {/* <ChevronRight size={18} /> */}
              </button>
            </div>
          </div>
        </>
      )}
    </div>
  );
};

export default Audit;