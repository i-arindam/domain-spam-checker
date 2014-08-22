//= require plugin_files/jquery.dataTables.min

function DomainList(config) {
  this.config = config;
  this._init();
}

DomainList.prototype._init = function() {
  var that = this;
  $('table.main-data').DataTable({
    deferRender: true,
    lengthChange: false,

  });
};