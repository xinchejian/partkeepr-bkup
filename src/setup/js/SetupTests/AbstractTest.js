/**
 * Represents a test.
 * 
 * Calls a specific PHP file on the server via AJAX and interprets the response.
 */
Ext.define('PartKeeprSetup.AbstractTest', {
	mixins: {
        observable: 'Ext.util.Observable'
    },
	
	/**
	 * Defines the URL to call
	 */
	url: 'check.php',
	
	/**
	 * Defines if the call was successful or not.
	 */
	success: false,
	
	/**
	 * Defines the callback. This needs to be an object which implements the "appendTestResult" method.
	 */
	callback: null,
	
	/**
	 * Defines the name of this test.
	 */
	name: null,
	
	/**
	 * Defines any warnings for the test.
	 */
	warnings: null,
	
	/**
	 * Defines additional parameters which are to be sent with the request. The format is an object,
	 * e.g.
	 * {
	 *    username: "foo",
	 *    password: "bar"
	 * }
	 * 
	 * 
	 */
	params: null,
	
	/**
	 * Constructs the test
	 */
	constructor: function (config) {
		this.mixins.observable.constructor.call(this, config);
		
		this.addEvents("complete");
	},
	/**
	 * Runs a given test, and processes the response
	 */
	run: function () {
		this.onBeforeRunTest();
		
		this.callback.outputTestMessage(this);
		Ext.Ajax.request({
			url: this.url,
			success: this.onSuccess,
			scope: this,
			params: this.params,
			timeout: 120000
		});
	},
	
	/**
	 * Callback for the Ext.Ajax.request method. Decodes the response, sets the object parameters, fires the "complete"
	 * event and calls back the test result panel.
	 * 
	 * @param response
	 */
	onSuccess: function (response) {
		var obj;
		
		try {
			obj = Ext.decode(response.responseText);
		} catch (exception) {
			obj = {};
			obj.error = true;
			obj.message = "Invalid Response from server: "+response.responseText;
		}
		
		
		if (obj.error === false) {
			this.success = true;
		} else {
			this.success = false;
			this.errorMessage = obj.message;
		}
		
		if (obj.warnings) {
			this.warnings = obj.warnings;
		}
		
		if (this.callback) {
			this.callback.appendTestResult(this);
		}
		
		if (this.success) {
			this.fireEvent("complete", this);	
		}
	},
	/**
	 * Gets called prior test execution. Most tests won't use this, but some tests need to inject parameters.
	 */
	onBeforeRunTest: function () {
		return;	
	}
});