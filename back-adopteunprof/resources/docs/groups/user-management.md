# User management

APIs for managing Users

## Display the specified USER.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/user/et" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/user/et"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (500):

```json
{
    "message": "Call to a member function toJson() on null",
    "exception": "Error",
    "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/Auth\/UserAuthController.php",
    "line": 150,
    "trace": [
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Controller.php",
            "line": 54,
            "function": "showuser",
            "class": "App\\Http\\Controllers\\Auth\\UserAuthController",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/ControllerDispatcher.php",
            "line": 45,
            "function": "callAction",
            "class": "Illuminate\\Routing\\Controller",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 254,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\ControllerDispatcher",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 197,
            "function": "runController",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 695,
            "function": "run",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Routing\\{closure}",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/SubstituteBindings.php",
            "line": 50,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\SubstituteBindings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 127,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 103,
            "function": "handleRequest",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 55,
            "function": "handleRequestUsingNamedLimiter",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 697,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 672,
            "function": "runRouteWithinStack",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 636,
            "function": "runRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 625,
            "function": "dispatchToRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 166,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Foundation\\Http\\{closure}",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ConvertEmptyStringsToNull.php",
            "line": 31,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TrimStrings.php",
            "line": 40,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TrimStrings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ValidatePostSize.php",
            "line": 27,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/PreventRequestsDuringMaintenance.php",
            "line": 86,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fideloper\/proxy\/src\/TrustProxies.php",
            "line": 57,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fideloper\\Proxy\\TrustProxies",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 141,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 110,
            "function": "sendRequestThroughRouter",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 324,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 305,
            "function": "callLaravelOrLumenRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 76,
            "function": "makeApiCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 51,
            "function": "makeResponseCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 41,
            "function": "makeResponseCallIfEnabledAndNoSuccessResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 236,
            "function": "__invoke",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 172,
            "function": "iterateThroughStrategies",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 127,
            "function": "fetchResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 119,
            "function": "processRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 73,
            "function": "processRoutes",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 36,
            "function": "handle",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Util.php",
            "line": 40,
            "function": "Illuminate\\Container\\{closure}",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 93,
            "function": "unwrapIfClosure",
            "class": "Illuminate\\Container\\Util",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 37,
            "function": "callBoundMethod",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Container.php",
            "line": 614,
            "function": "call",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 136,
            "function": "call",
            "class": "Illuminate\\Container\\Container",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Command\/Command.php",
            "line": 288,
            "function": "execute",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 121,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Command\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 974,
            "function": "run",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 291,
            "function": "doRunCommand",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 167,
            "function": "doRun",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Application.php",
            "line": 92,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Console\/Kernel.php",
            "line": 129,
            "function": "run",
            "class": "Illuminate\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/artisan",
            "line": 37,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Console\\Kernel",
            "type": "->"
        }
    ]
}
```
<div id="execution-results-GETapi-user--id-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-user--id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-user--id-"></code></pre>
</div>
<div id="execution-error-GETapi-user--id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-user--id-"></code></pre>
</div>
<form id="form-GETapi-user--id-" data-method="GET" data-path="api/user/{id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-user--id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-user--id-" onclick="tryItOut('GETapi-user--id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-user--id-" onclick="cancelTryOut('GETapi-user--id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-user--id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/user/{id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="id" data-endpoint="GETapi-user--id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Display the specified PROFESSOR account linked to the USER account.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/prof/sunt" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/prof/sunt"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (500):

```json
{
    "message": "Trying to get property 'prof' of non-object",
    "exception": "ErrorException",
    "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/Auth\/UserAuthController.php",
    "line": 161,
    "trace": [
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/Auth\/UserAuthController.php",
            "line": 161,
            "function": "handleError",
            "class": "Illuminate\\Foundation\\Bootstrap\\HandleExceptions",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Controller.php",
            "line": 54,
            "function": "showprof",
            "class": "App\\Http\\Controllers\\Auth\\UserAuthController",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/ControllerDispatcher.php",
            "line": 45,
            "function": "callAction",
            "class": "Illuminate\\Routing\\Controller",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 254,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\ControllerDispatcher",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 197,
            "function": "runController",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 695,
            "function": "run",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Routing\\{closure}",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/SubstituteBindings.php",
            "line": 50,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\SubstituteBindings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 127,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 103,
            "function": "handleRequest",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 55,
            "function": "handleRequestUsingNamedLimiter",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 697,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 672,
            "function": "runRouteWithinStack",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 636,
            "function": "runRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 625,
            "function": "dispatchToRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 166,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Foundation\\Http\\{closure}",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ConvertEmptyStringsToNull.php",
            "line": 31,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TrimStrings.php",
            "line": 40,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TrimStrings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ValidatePostSize.php",
            "line": 27,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/PreventRequestsDuringMaintenance.php",
            "line": 86,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fideloper\/proxy\/src\/TrustProxies.php",
            "line": 57,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fideloper\\Proxy\\TrustProxies",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 141,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 110,
            "function": "sendRequestThroughRouter",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 324,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 305,
            "function": "callLaravelOrLumenRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 76,
            "function": "makeApiCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 51,
            "function": "makeResponseCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 41,
            "function": "makeResponseCallIfEnabledAndNoSuccessResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 236,
            "function": "__invoke",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 172,
            "function": "iterateThroughStrategies",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 127,
            "function": "fetchResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 119,
            "function": "processRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 73,
            "function": "processRoutes",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 36,
            "function": "handle",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Util.php",
            "line": 40,
            "function": "Illuminate\\Container\\{closure}",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 93,
            "function": "unwrapIfClosure",
            "class": "Illuminate\\Container\\Util",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 37,
            "function": "callBoundMethod",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Container.php",
            "line": 614,
            "function": "call",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 136,
            "function": "call",
            "class": "Illuminate\\Container\\Container",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Command\/Command.php",
            "line": 288,
            "function": "execute",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 121,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Command\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 974,
            "function": "run",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 291,
            "function": "doRunCommand",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 167,
            "function": "doRun",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Application.php",
            "line": 92,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Console\/Kernel.php",
            "line": 129,
            "function": "run",
            "class": "Illuminate\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/artisan",
            "line": 37,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Console\\Kernel",
            "type": "->"
        }
    ]
}
```
<div id="execution-results-GETapi-prof--id-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-prof--id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-prof--id-"></code></pre>
</div>
<div id="execution-error-GETapi-prof--id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-prof--id-"></code></pre>
</div>
<form id="form-GETapi-prof--id-" data-method="GET" data-path="api/prof/{id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-prof--id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-prof--id-" onclick="tryItOut('GETapi-prof--id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-prof--id-" onclick="cancelTryOut('GETapi-prof--id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-prof--id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/prof/{id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="id" data-endpoint="GETapi-prof--id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Display the specified STUDENT account linked to the USER account.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/stud/sit" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/stud/sit"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (500):

```json
{
    "message": "Trying to get property 'stud' of non-object",
    "exception": "ErrorException",
    "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/Auth\/UserAuthController.php",
    "line": 178,
    "trace": [
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/Auth\/UserAuthController.php",
            "line": 178,
            "function": "handleError",
            "class": "Illuminate\\Foundation\\Bootstrap\\HandleExceptions",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Controller.php",
            "line": 54,
            "function": "showstud",
            "class": "App\\Http\\Controllers\\Auth\\UserAuthController",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/ControllerDispatcher.php",
            "line": 45,
            "function": "callAction",
            "class": "Illuminate\\Routing\\Controller",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 254,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\ControllerDispatcher",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Route.php",
            "line": 197,
            "function": "runController",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 695,
            "function": "run",
            "class": "Illuminate\\Routing\\Route",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Routing\\{closure}",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/SubstituteBindings.php",
            "line": 50,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\SubstituteBindings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 127,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 103,
            "function": "handleRequest",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Middleware\/ThrottleRequests.php",
            "line": 55,
            "function": "handleRequestUsingNamedLimiter",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 697,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 672,
            "function": "runRouteWithinStack",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 636,
            "function": "runRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Router.php",
            "line": 625,
            "function": "dispatchToRoute",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 166,
            "function": "dispatch",
            "class": "Illuminate\\Routing\\Router",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 128,
            "function": "Illuminate\\Foundation\\Http\\{closure}",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ConvertEmptyStringsToNull.php",
            "line": 31,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TransformsRequest.php",
            "line": 21,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/TrimStrings.php",
            "line": 40,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\TrimStrings",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/ValidatePostSize.php",
            "line": 27,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/PreventRequestsDuringMaintenance.php",
            "line": 86,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fideloper\/proxy\/src\/TrustProxies.php",
            "line": 57,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fideloper\\Proxy\\TrustProxies",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/fruitcake\/laravel-cors\/src\/HandleCors.php",
            "line": 52,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Fruitcake\\Cors\\HandleCors",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 103,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 141,
            "function": "then",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Kernel.php",
            "line": 110,
            "function": "sendRequestThroughRouter",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 324,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Kernel",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 305,
            "function": "callLaravelOrLumenRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 76,
            "function": "makeApiCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 51,
            "function": "makeResponseCall",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Strategies\/Responses\/ResponseCalls.php",
            "line": 41,
            "function": "makeResponseCallIfEnabledAndNoSuccessResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 236,
            "function": "__invoke",
            "class": "Knuckles\\Scribe\\Extracting\\Strategies\\Responses\\ResponseCalls",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 172,
            "function": "iterateThroughStrategies",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Extracting\/Generator.php",
            "line": 127,
            "function": "fetchResponses",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 119,
            "function": "processRoute",
            "class": "Knuckles\\Scribe\\Extracting\\Generator",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/knuckleswtf\/scribe\/src\/Commands\/GenerateDocumentation.php",
            "line": 73,
            "function": "processRoutes",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 36,
            "function": "handle",
            "class": "Knuckles\\Scribe\\Commands\\GenerateDocumentation",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Util.php",
            "line": 40,
            "function": "Illuminate\\Container\\{closure}",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 93,
            "function": "unwrapIfClosure",
            "class": "Illuminate\\Container\\Util",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/BoundMethod.php",
            "line": 37,
            "function": "callBoundMethod",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Container\/Container.php",
            "line": 614,
            "function": "call",
            "class": "Illuminate\\Container\\BoundMethod",
            "type": "::"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 136,
            "function": "call",
            "class": "Illuminate\\Container\\Container",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Command\/Command.php",
            "line": 288,
            "function": "execute",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Command.php",
            "line": 121,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Command\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 974,
            "function": "run",
            "class": "Illuminate\\Console\\Command",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 291,
            "function": "doRunCommand",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/symfony\/console\/Application.php",
            "line": 167,
            "function": "doRun",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Console\/Application.php",
            "line": 92,
            "function": "run",
            "class": "Symfony\\Component\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Console\/Kernel.php",
            "line": 129,
            "function": "run",
            "class": "Illuminate\\Console\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/artisan",
            "line": 37,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Console\\Kernel",
            "type": "->"
        }
    ]
}
```
<div id="execution-results-GETapi-stud--id-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-stud--id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-stud--id-"></code></pre>
</div>
<div id="execution-error-GETapi-stud--id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-stud--id-"></code></pre>
</div>
<form id="form-GETapi-stud--id-" data-method="GET" data-path="api/stud/{id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-stud--id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-stud--id-" onclick="tryItOut('GETapi-stud--id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-stud--id-" onclick="cancelTryOut('GETapi-stud--id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-stud--id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/stud/{id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="id" data-endpoint="GETapi-stud--id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Register a USER.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/api/register" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/register"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "POST",
    headers,
}).then(response => response.json());
```


<div id="execution-results-POSTapi-register" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-register"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-register"></code></pre>
</div>
<div id="execution-error-POSTapi-register" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-register"></code></pre>
</div>
<form id="form-POSTapi-register" data-method="POST" data-path="api/register" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-register', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-register" onclick="tryItOut('POSTapi-register');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-register" onclick="cancelTryOut('POSTapi-register');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-register" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/register</code></b>
</p>
</form>


## Login a USER.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/api/login" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -d '{"email":"thomaslebg@grosBG.com","password":"password"}'

```

```javascript
const url = new URL(
    "http://localhost:8000/api/login"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};

let body = {
    "email": "thomaslebg@grosBG.com",
    "password": "password"
}

fetch(url, {
    method: "POST",
    headers,
    body: JSON.stringify(body),
}).then(response => response.json());
```


<div id="execution-results-POSTapi-login" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-login"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-login"></code></pre>
</div>
<div id="execution-error-POSTapi-login" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-login"></code></pre>
</div>
<form id="form-POSTapi-login" data-method="POST" data-path="api/login" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-login', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-login" onclick="tryItOut('POSTapi-login');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-login" onclick="cancelTryOut('POSTapi-login');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-login" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/login</code></b>
</p>
<h4 class="fancy-heading-panel"><b>Body Parameters</b></h4>
<p>
<b><code>email</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="email" data-endpoint="POSTapi-login" data-component="body" required  hidden>
<br>
The email of the user.
</p>
<p>
<b><code>password</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="password" name="password" data-endpoint="POSTapi-login" data-component="body" required  hidden>
<br>
The password of the user.
</p>

</form>


## Display a listing of all the USERS.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/users" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/users"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
[
    {
        "id": 1,
        "facebookID": "NONE",
        "name": "admin",
        "email": "admin@gmail.com",
        "email_verified_at": null,
        "created_at": "2021-06-03T13:32:25.000000Z",
        "updated_at": "2021-06-03T13:32:25.000000Z"
    }
]
```
<div id="execution-results-GETapi-users" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-users"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-users"></code></pre>
</div>
<div id="execution-error-GETapi-users" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-users"></code></pre>
</div>
<form id="form-GETapi-users" data-method="GET" data-path="api/users" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-users', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-users" onclick="tryItOut('GETapi-users');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-users" onclick="cancelTryOut('GETapi-users');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-users" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/users</code></b>
</p>
</form>


## Store a newly created USER in storage.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/api/users" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/users"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "POST",
    headers,
}).then(response => response.json());
```


<div id="execution-results-POSTapi-users" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-users"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-users"></code></pre>
</div>
<div id="execution-error-POSTapi-users" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-users"></code></pre>
</div>
<form id="form-POSTapi-users" data-method="POST" data-path="api/users" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-users', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-users" onclick="tryItOut('POSTapi-users');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-users" onclick="cancelTryOut('POSTapi-users');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-users" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/users</code></b>
</p>
</form>


## Update the specified USER in storage.




> Example request:

```bash
curl -X PUT \
    "http://localhost:8000/api/users/unde" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/users/unde"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "PUT",
    headers,
}).then(response => response.json());
```


<div id="execution-results-PUTapi-users--user-" hidden>
    <blockquote>Received response<span id="execution-response-status-PUTapi-users--user-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-PUTapi-users--user-"></code></pre>
</div>
<div id="execution-error-PUTapi-users--user-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-PUTapi-users--user-"></code></pre>
</div>
<form id="form-PUTapi-users--user-" data-method="PUT" data-path="api/users/{user}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('PUTapi-users--user-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-PUTapi-users--user-" onclick="tryItOut('PUTapi-users--user-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-PUTapi-users--user-" onclick="cancelTryOut('PUTapi-users--user-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-PUTapi-users--user-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-darkblue">PUT</small>
 <b><code>api/users/{user}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>user</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="user" data-endpoint="PUTapi-users--user-" data-component="url" required  hidden>
<br>

</p>
</form>


## Remove the specified USER from storage.




> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/api/users/sint" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/users/sint"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
};


fetch(url, {
    method: "DELETE",
    headers,
}).then(response => response.json());
```


<div id="execution-results-DELETEapi-users--user-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEapi-users--user-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEapi-users--user-"></code></pre>
</div>
<div id="execution-error-DELETEapi-users--user-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEapi-users--user-"></code></pre>
</div>
<form id="form-DELETEapi-users--user-" data-method="DELETE" data-path="api/users/{user}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('DELETEapi-users--user-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEapi-users--user-" onclick="tryItOut('DELETEapi-users--user-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEapi-users--user-" onclick="cancelTryOut('DELETEapi-users--user-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEapi-users--user-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>api/users/{user}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>user</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="user" data-endpoint="DELETEapi-users--user-" data-component="url" required  hidden>
<br>

</p>
</form>



