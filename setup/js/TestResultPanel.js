/**
 * Provides a simple panel where tests can be displayed including their status.
 */
Ext.define('PartKeeprSetup.TestResultPanel', {
	extend: 'Ext.panel.Panel',

	/**
	 * Initializes the component.
	 */
	initComponent: function () {
		this.addEvents("test-error");
		this.callParent();
	},
	
	/**
	 * Clears the result output panel.
	 */
	clear: function () {
		this.removeAll(true);
	},
	
	outputTestMessage: function (test) {
		var cmp = this.add({
			border: false,
			html: test.message +'...<img src="resources/images/ajax-loader.gif" align="absbottom"/>'
		});
		
		test.outputCmp = cmp;
	},
	/**
	 * Appends the specific test to the output panel,
	 * and fires the error event if an error occured.
	 * 
	 * @param test	PartKeeprSetup.AbstractTest
	 */
	appendTestResult: function (test) {
		var response;
		
		if (test.success) {
			response = '<b style="color: green;">OK</b>';	
		} else {
			response = '<b style="color: red;">Error</b><br/><br>'+test.errorMessage;
			this.fireEvent("test-error");
		}
		
		if (test.warnings instanceof Array && test.warnings.length > 0) {
			response += '<br/><div style="margin-left: 10px;">';
			
			for (var i=0;i<test.warnings.length;i++) {
				response += "<i>"+test.warnings[i]+"</i><br/>"; 
			}
			
			response += "</div><br/>";
		}
		
		test.outputCmp.body.replaceWith({
			border: false,
			html: test.message +"..."+response
		});
		
		test.outputCmp.doLayout();
	}
});