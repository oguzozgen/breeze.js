﻿<%@ page language="C#" %>
<%@ Import namespace="Sample_WebApi2.Controllers" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1"/>
    <title id="title">Breeze .NET Test Suite</title>
    <link rel="stylesheet" href="vendor/qunit-1.17.1.css" type="text/css" media="screen"/>
    <script type="text/javascript" src="vendor/modernizr-2.0.6-development-only.js" ></script>
</head>

<body>
    <div id="qunit"></div>
    <div id="qunit-fixture"></div>
    <div id="test-dev"></div>

    <!-- load 3rd party libs -->
    <script src="vendor/qunit-1.17.1.js"></script>
    <script src="vendor/sinon.js"></script>
    <!-- DO NOT USE sinon-qunit. Breaks our tests for some reason. Don't need anyway-->
    <!--<script src="vendor/sinon-qunit.js"></script>-->
    <script src="vendor/q.min.js"></script>
    <script src="vendor/knockout-2.3.0.debug.js"></script>
    <script src="vendor/lodash.min.js"></script>
    <script src="vendor/backbone.min.js"></script>
    <script src="vendor/jquery-2.0.3.min.js"></script>
    <script src="vendor/angular.min.js"></script>
    <%--<script src="vendor/angular1.6.min.js"></script>--%>
    <script src="vendor/changesets.js"></script>

    <!-- Test helper scripts  -->
    <!-- These two must come first -->
    <!-- test full breeze -->
    <script src="breeze/breeze.debug.js"></script>

    <!-- test breeze.base with angular -->
<%--    <script src="breeze/breeze.base.debug.js"></script>
    <script src="breeze/adapter-ajax-angular.js"></script>
    <script src="breeze/adapter-data-service-webapi.js"></script>
    <script src="breeze/adapter-model-library-backing-store.js"></script>
    <script src="breeze/adapter-uri-builder-odata.js"></script>--%>




    <script src="breeze/breeze.bridge.angular.js"></script>
    <%--<script src="breeze/promise-finally-shim.js"></script>--%>
    <%--<script src="breeze/breeze.modelLibrary.backbone.js"></script>--%>
    <script src="internal/testFns.js"></script>

    <script>
        // -- Initialize Test vars
        var configVersion = "<%=NorthwindContextProvider.CONFIG_VERSION %>";
        breezeTestFns.setServerVersion("DotNetWebApi", configVersion);
        breezeTestFns.setSampleNamespace("Sample_WebApi2.Models");       
    </script>

    <script src="internal/ajaxAdapterTests.js"></script>
    <script src="internal/attachTests.js"></script>
    <script src="internal/classRewriteTests.js"></script>
    <script src="internal/complexTypeTests.js"></script>
    <script src="internal/entityManagerTests.js"></script>
    <script src="internal/entityTests.js"></script>
    <script src="internal/inheritBillingTests.js"></script>
    <script src="internal/inheritProduceTests.js"></script>
    <script src="internal/koSpecificTests.js"></script>
    <script src="internal/metadataTests.js"></script>
    <script src="internal/miscTests.js"></script>
    <script src="internal/noTrackingTests.js"></script>
    <script src="internal/paramTests.js"></script>
    <script src="internal/predicateTests.js"></script>
    <script src="internal/queryTests.js"></script>
    <script src="internal/queryAnyAllTests.js"></script>
    <script src="internal/queryCtorTests.js"></script>
    <script src="internal/queryDatatypeTests.js"></script>
    <script src="internal/queryLocalTests.js"></script>
    <script src="internal/queryNamedTests.js"></script>
    <script src="internal/queryNonEFTests.js"></script>
    <script src="internal/queryRawOdataTests.js"></script>
    <script src="internal/querySelectTests.js"></script>
    <script src="internal/saveInterceptorTests.js"></script>
    <script src="internal/saveTests.js"></script>
    <script src="internal/saveTransactionTests.js"></script>
    <script src="internal/serverDeleteTests.js"></script>
    <script src="internal/validateTests.js"></script>
    <script src="internal/validateEntityTests.js"></script>

    <!-- Tests are loaded; let's go! -->
    <script>
        //breezeTestFns.queryServerVersion("/api/testconfig");
        QUnit.start();
        
    </script>
</body>
</html>
