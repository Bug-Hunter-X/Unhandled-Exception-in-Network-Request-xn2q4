# Unhandled Exception in Dart Network Request

This example demonstrates a common issue in Dart applications: unhandled exceptions during asynchronous network requests.  The `fetchData` function makes a network call, but only prints the error.  This can lead to unexpected application behavior because the application silently fails without any clear indication of what went wrong.

The solution provided shows how to properly handle exceptions to ensure resilience.
