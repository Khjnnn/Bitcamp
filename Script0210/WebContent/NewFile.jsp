<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="dist/themes/default/style.min.css" />
<script type="text/javascript">
void CreateTree(NodeText){
	root = document.getElementById('body');
 	root.Text = NodeText;
 	DynamicTreeView.Nodes.Add(root);
 	function data_init(data){
 		var 
 	}
}

new TreeNode();

var tree = new CreateTree(document.getElementById('div'));
var data = {name:"name",href:"A링크",target:"target",icon:"",child:[]};
var childA ={name:"관리자메뉴",href:"",target:"",icon:"",child:[]};
data.child.push(childA);

var childA1 ={name:"기준",href:"http://w3.schools.com",target:"_blank",icon:"",child:[]};

childA.child.push(childA1);

tree.data_init(data);
tree.CreateView();



</script>
</head>
<body>
<div id="jstree">
  <!-- in this example the tree is populated from inline HTML -->
    <ul>
      <li>Root node 1
        <ul>
          <li id="child_node_1">Child node 1</li>
          <li>Child node 2</li>
        </ul>
      </li>
      <li>Root node 2</li>
    </ul>
</div>
<button>demo button</button>
  <script src="dist/jstree.min.js"></script>
   <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });

    $('#jstree').jstree({
    	  "plugins" : [ "wholerow", "checkbox" ]
    	});
    $.jstree.defaults.core.themes.variant = "large";

    $('#jstree').jstree({
    	  "core" : {
    	    "themes" : {
    	      "variant" : "large"
    	    }
    	  },
    	  "checkbox" : {
    	    "keep_selected_style" : false
    	  },
    	  "plugins" : [ "wholerow", "checkbox" ]
    });
    
    $("#jstree").jstree({
    	  "core" : {
    	    "multiple" : false,
    	    "animation" : 0
    	  }
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
 
  </script>
</body>
</html>