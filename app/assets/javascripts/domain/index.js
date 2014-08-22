//= require plugin_files/jquery.dataTables.min

function DomainList(config) {
  this.config = config;
  this._init();
}

DomainList.prototype._init = function() {
  var that = this;
  this.tableControl = $('table.main-data').DataTable({
    deferRender: true,
    lengthChange: false,
    paging: false
  });

  this.tableControl.columns().eq(0).each( function(colIdx) {
    $('input.search-box', that.tableControl.column( colIdx ).footer()).on( 'keyup change', function () {
      that.tableControl.column( colIdx ).search( this.value ).draw();
    });
  });
};