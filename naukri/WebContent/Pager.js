

function Pager(tableName,itemsPerPage)
{ 
 this.tableName = tableName; 
 this.itemsPerPage = itemsPerPage; 
 this.currentPage = 1; 
 this.pages = 0; 
 this.inited = false; 
 
 this.showRecords = function(from,to)
 { 
  var rows = document.getElementById(tableName).rows; 
  // i starts from 1 to skip table header row 
  for (var i = 1; i < rows.length; i++) 
  { 
   if (i < from || i > to) 
   rows[i].style.display = 'none'; 
   else 
   rows[i].style.display = ''; 
  } 
 } 
 
 this.showPage = function(pageNumber) 
 { 
  if (! this.inited) {  alert("not inited"); return; } 
   var oldPageAnchor = document.getElementById('pg'+this.currentPage); 
   oldPageAnchor.className = 'pg-normal'; 
 
   this.currentPage = pageNumber; 
   var newPageAnchor = document.getElementById('pg'+this.currentPage); 
   newPageAnchor.className = 'pg-selected'; 
 
   var from = (pageNumber - 1) * itemsPerPage + 1; 
   var to = from + itemsPerPage - 1; 
   this.showRecords(from, to); 
 } 
 
 this.prev = function() 
 { 
  if (this.currentPage > 1) 
   this.showPage(this.currentPage - 1); 
 } 
 
 this.next = function() 
 { 
  if (this.currentPage < this.pages)  
    this.showPage(this.currentPage + 1); 
  
 } 
 
 this.init = function() 
 { 
  var rows = document.getElementById(tableName).rows; 
  var records = (rows.length - 1); 
  this.pages = Math.ceil(records / itemsPerPage); 
  this.inited = true; 
 } 
 
 this.showPageNav = function(pagerName, positionId)
 { 
  if (! this.inited) { alert("not inited");return; } 
  var element = document.getElementById(positionId); 
 
  var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> � Prev </span> | ';   
  for (var page = 1; page <= this.pages; page++)    
     pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> | ';   
     pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next �</span>'; 
 
  element.innerHTML = pagerHtml; 
 } 
}
        var sortedOn = 0;
	
	function SortTable(sortOn) {
	
		var table = document.getElementById('results');
		var tbody = table.getElementsByTagName('tbody')[0];
		var rows = tbody.getElementsByTagName('tr');
 
		var rowArray = new Array();
		for (var i=0, length=rows.length; i<length; i++) {
			rowArray[i] = rows[i].cloneNode(true);
		}
		
		 
			sortedOn = sortOn;
			if ((sortedOn == 0)||(sortedOn == 1)||(sortedOn == 3)) {
				rowArray.sort(RowCompareNumbers);
			}
			else if (sortedOn == 6) {
				rowArray.sort(RowCompareDate);
			}
			else {
				rowArray.sort(RowCompare);
			}
		
		
		var newTbody = document.createElement('tbody');
		for (var i=0, length=rowArray.length; i<length; i++) {
			newTbody.appendChild(rowArray[i]);
		}
		
		table.replaceChild(newTbody, tbody);
	}
	
	function RowCompare(a, b) {
	
		var aVal = a.getElementsByTagName('td')[sortedOn].firstChild.nodeValue;
		var bVal = b.getElementsByTagName('td')[sortedOn].firstChild.nodeValue;
		return (aVal == bVal ? 0 : (aVal > bVal ? 1 : -1));
	}
 
	function RowCompareNumbers(a, b) {
	
		var aVal = parseInt(a.getElementsByTagName('td')[sortedOn].firstChild.nodeValue);
		var bVal = parseInt(b.getElementsByTagName('td')[sortedOn].firstChild.nodeValue);
		return (aVal - bVal);
	}
 
	function RowCompareDate(a, b) {
	
		var aVal = Date.parse(a.getElementsByTagName('td')[sortedOn].firstChild.nodeValue);
		var bVal = Date.parse(b.getElementsByTagName('td')[sortedOn].firstChild.nodeValue);
		return (aVal == bVal ? 0 : (aVal > bVal ? 1 : -1));
	}
 