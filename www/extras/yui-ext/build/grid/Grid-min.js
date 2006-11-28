/*
 * YUI Extensions 0.33 RC2
 * Copyright(c) 2006, Jack Slocum.
 */


YAHOO.ext.grid.Grid=function(container,dataModel,colModel,selectionModel){this.container=YAHOO.ext.Element.get(container);this.container.update('');this.container.setStyle('overflow','hidden');this.id=this.container.id;this.rows=[];this.rowCount=0;this.fieldId=null;this.dataModel=dataModel;this.colModel=colModel;this.selModel=selectionModel;this.activeEditor=null;this.editingCell=null;this.minColumnWidth=25;this.autoSizeColumns=false;this.autoSizeHeaders=false;this.monitorWindowResize=true;this.maxRowsToMeasure=0;this.trackMouseOver=false;this.enableDragDrop=false;this.stripeRows=true;this.autoHeight=false;this.autoWidth=false;this.allowTextSelectionPattern=/INPUT|TEXTAREA|SELECT/i;this.setValueDelegate=this.setCellValue.createDelegate(this);var CE=YAHOO.util.CustomEvent;this.events={'click':new CE('click'),'dblclick':new CE('dblclick'),'mousedown':new CE('mousedown'),'mouseup':new CE('mouseup'),'mouseover':new CE('mouseover'),'mouseout':new CE('mouseout'),'keypress':new CE('keypress'),'keydown':new CE('keydown'),'cellclick':new CE('cellclick'),'celldblclick':new CE('celldblclick'),'rowclick':new CE('rowclick'),'rowdblclick':new CE('rowdblclick'),'headerclick':new CE('headerclick'),'rowcontextmenu':new CE('rowcontextmenu'),'headercontextmenu':new CE('headercontextmenu'),'beforeedit':new CE('beforeedit'),'afteredit':new CE('afteredit'),'bodyscroll':new CE('bodyscroll'),'columnresize':new CE('columnresize'),'startdrag':new CE('startdrag'),'enddrag':new CE('enddrag'),'dragdrop':new CE('dragdrop'),'dragover':new CE('dragover'),'dragenter':new CE('dragenter'),'dragout':new CE('dragout')};};YAHOO.ext.grid.Grid.prototype={render:function(){if((!this.container.dom.offsetHeight||this.container.dom.offsetHeight<20)||this.container.getStyle('height')=='auto'){this.autoHeight=true;}
if((!this.container.dom.offsetWidth||this.container.dom.offsetWidth<20)){this.autoWidth=true;}
if(!this.view){if(this.dataModel.isPaged()){this.view=new YAHOO.ext.grid.PagedGridView();}else{this.view=new YAHOO.ext.grid.GridView();}}
this.view.init(this);this.el=getEl(this.view.render(),true);var c=this.container;c.mon("click",this.onClick,this,true);c.mon("dblclick",this.onDblClick,this,true);c.mon("contextmenu",this.onContextMenu,this,true);c.mon("selectstart",this.cancelTextSelection,this,true);c.mon("mousedown",this.cancelTextSelection,this,true);c.mon("mousedown",this.onMouseDown,this,true);c.mon("mouseup",this.onMouseUp,this,true);if(this.trackMouseOver){this.el.mon("mouseover",this.onMouseOver,this,true);this.el.mon("mouseout",this.onMouseOut,this,true);}
c.mon("keypress",this.onKeyPress,this,true);c.mon("keydown",this.onKeyDown,this,true);this.init();},setDataModel:function(dm,rerender){this.view.unplugDataModel(this.dataModel);this.dataModel=dm;this.view.plugDataModel(dm);if(rerender){dm.fireEvent('datachanged');}},init:function(){this.rows=this.el.dom.rows;if(!this.disableSelection){if(!this.selModel){this.selModel=new YAHOO.ext.grid.DefaultSelectionModel(this);}
this.selModel.init(this);this.selModel.onSelectionChange.subscribe(this.updateField,this,true);}else{this.selModel=new YAHOO.ext.grid.DisableSelectionModel(this);this.selModel.init(this);}
if(this.enableDragDrop){this.dd=new YAHOO.ext.grid.GridDD(this,this.container.dom);}},onMouseDown:function(e){this.fireEvent('mousedown',e);},onMouseUp:function(e){this.fireEvent('mouseup',e);},onMouseOver:function(e){this.fireEvent('mouseover',e);},onMouseOut:function(e){this.fireEvent('mouseout',e);},onKeyPress:function(e){this.fireEvent('keypress',e);},onKeyDown:function(e){this.fireEvent('keydown',e);},fireEvent:YAHOO.ext.util.Observable.prototype.fireEvent,on:YAHOO.ext.util.Observable.prototype.on,addListener:YAHOO.ext.util.Observable.prototype.addListener,delayedListener:YAHOO.ext.util.Observable.prototype.delayedListener,removeListener:YAHOO.ext.util.Observable.prototype.removeListener,purgeListeners:YAHOO.ext.util.Observable.prototype.purgeListeners,onClick:function(e){this.fireEvent('click',e);var target=e.getTarget();var row=this.getRowFromChild(target);var cell=this.getCellFromChild(target);var header=this.getHeaderFromChild(target);if(row){this.fireEvent('rowclick',this,row.rowIndex,e);}
if(cell){this.fireEvent('cellclick',this,row.rowIndex,cell.columnIndex,e);}
if(header){this.fireEvent('headerclick',this,header.columnIndex,e);}},onContextMenu:function(e){var target=e.getTarget();var row=this.getRowFromChild(target);var header=this.getHeaderFromChild(target);if(row){this.fireEvent('rowcontextmenu',this,row.rowIndex,e);}
if(header){this.fireEvent('headercontextmenu',this,header.columnIndex,e);}
e.preventDefault();},onDblClick:function(e){this.fireEvent('dblclick',e);var target=e.getTarget();var row=this.getRowFromChild(target);var cell=this.getCellFromChild(target);if(row){this.fireEvent('rowdblclick',this,row.rowIndex,e);}
if(cell){this.fireEvent('celldblclick',this,row.rowIndex,cell.columnIndex,e);}},startEditing:function(rowIndex,colIndex){var row=this.rows[rowIndex];var cell=row.childNodes[colIndex];this.stopEditing();setTimeout(this.doEdit.createDelegate(this,[row,cell]),10);},stopEditing:function(){if(this.activeEditor){this.activeEditor.stopEditing();}},doEdit:function(row,cell){if(!row||!cell)return;var cm=this.colModel;var dm=this.dataModel;var colIndex=cell.columnIndex;var rowIndex=row.rowIndex;if(cm.isCellEditable(colIndex,rowIndex)){var ed=cm.getCellEditor(colIndex,rowIndex);if(ed){if(this.activeEditor){this.activeEditor.stopEditing();}
this.fireEvent('beforeedit',this,rowIndex,colIndex);this.activeEditor=ed;this.editingCell=cell;this.view.ensureVisible(row,true);try{cell.focus();}catch(e){}
ed.init(this,this.el.dom.parentNode,this.setValueDelegate);var value=dm.getValueAt(rowIndex,cm.getDataIndex(colIndex));setTimeout(ed.startEditing.createDelegate(ed,[value,row,cell]),1);}}},setCellValue:function(value,rowIndex,colIndex){this.dataModel.setValueAt(value,rowIndex,this.colModel.getDataIndex(colIndex));this.fireEvent('afteredit',this,rowIndex,colIndex);},cancelTextSelection:function(e){var target=e.getTarget();if(target&&target!=this.el.dom.parentNode&&!this.allowTextSelectionPattern.test(target.tagName)){e.preventDefault();}},autoSize:function(){this.view.updateWrapHeight();this.view.adjustForScroll();},scrollTo:function(row){if(typeof row=='number'){row=this.rows[row];}
this.view.ensureVisible(row,true);},getEditingCell:function(){return this.editingCell;},bindToField:function(fieldId){this.fieldId=fieldId;this.readField();},updateField:function(){if(this.fieldId){var field=YAHOO.util.Dom.get(this.fieldId);field.value=this.getSelectedRowIds().join(',');}},readField:function(){if(this.fieldId){var field=YAHOO.util.Dom.get(this.fieldId);var values=field.value.split(',');var rows=this.getRowsById(values);this.selModel.selectRows(rows,false);}},getRow:function(index){return this.rows[index];},getRowsById:function(id){var dm=this.dataModel;if(!(id instanceof Array)){for(var i=0;i<this.rows.length;i++){if(dm.getRowId(i)==id){return this.rows[i];}}
return null;}
var found=[];var re="^(?:";for(var i=0;i<id.length;i++){re+=id[i];if(i!=id.length-1)re+="|";}
var regex=new RegExp(re+")$");for(var i=0;i<this.rows.length;i++){if(regex.test(dm.getRowId(i))){found.push(this.rows[i]);}}
return found;},getRowAfter:function(row){return this.getSibling('next',row);},getRowBefore:function(row){return this.getSibling('previous',row);},getCellAfter:function(cell,includeHidden){var next=this.getSibling('next',cell);if(next&&!includeHidden&&this.colModel.isHidden(next.columnIndex)){return this.getCellAfter(next);}
return next;},getCellBefore:function(cell,includeHidden){var prev=this.getSibling('previous',cell);if(prev&&!includeHidden&&this.colModel.isHidden(prev.columnIndex)){return this.getCellBefore(prev);}
return prev;},getLastCell:function(row,includeHidden){var cell=this.getElement('previous',row.lastChild);if(cell&&!includeHidden&&this.colModel.isHidden(cell.columnIndex)){return this.getCellBefore(cell);}
return cell;},getFirstCell:function(row,includeHidden){var cell=this.getElement('next',row.firstChild);if(cell&&!includeHidden&&this.colModel.isHidden(cell.columnIndex)){return this.getCellAfter(cell);}
return cell;},getSibling:function(type,node){if(!node)return null;type+='Sibling';var n=node[type];while(n&&n.nodeType!=1){n=n[type];}
return n;},getElement:function(direction,node){if(!node||node.nodeType==1)return node;else return this.getSibling(direction,node);},getElementFromChild:function(childEl,parentClass){if(!childEl||(YAHOO.util.Dom.hasClass(childEl,parentClass))){return childEl;}
var p=childEl.parentNode;var b=document.body;while(p&&p!=b){if(YAHOO.util.Dom.hasClass(p,parentClass)){return p;}
p=p.parentNode;}
return null;},getRowFromChild:function(childEl){return this.getElementFromChild(childEl,'ygrid-row');},getCellFromChild:function(childEl){return this.getElementFromChild(childEl,'ygrid-col');},getHeaderFromChild:function(childEl){return this.getElementFromChild(childEl,'ygrid-hd');},getSelectedRows:function(){return this.selModel.getSelectedRows();},getSelectedRow:function(){if(this.selModel.hasSelection()){return this.selModel.getSelectedRows()[0];}
return null;},getSelectedRowIndexes:function(){var a=[];var rows=this.selModel.getSelectedRows();for(var i=0;i<rows.length;i++){a[i]=rows[i].rowIndex;}
return a;},getSelectedRowIndex:function(){if(this.selModel.hasSelection()){return this.selModel.getSelectedRows()[0].rowIndex;}
return-1;},getSelectedRowId:function(){if(this.selModel.hasSelection()){return this.selModel.getSelectedRowIds()[0];}
return null;},getSelectedRowIds:function(){return this.selModel.getSelectedRowIds();},clearSelections:function(){this.selModel.clearSelections();},selectAll:function(){this.selModel.selectAll();},getSelectionCount:function(){return this.selModel.getCount();},hasSelection:function(){return this.selModel.hasSelection();},getSelectionModel:function(){if(!this.selModel){this.selModel=new DefaultSelectionModel();}
return this.selModel;},getDataModel:function(){return this.dataModel;},getColumnModel:function(){return this.colModel;},getView:function(){return this.view;},getDragDropText:function(){return this.ddText.replace('%0',this.selModel.getCount());}};YAHOO.ext.grid.Grid.prototype.ddText="%0 selected row(s)";