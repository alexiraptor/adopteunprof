# Comment management


## Display a listing of the COMMENTAIRE.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/comments" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/comments"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GETapi-comments" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-comments"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-comments"></code></pre>
</div>
<div id="execution-error-GETapi-comments" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-comments"></code></pre>
</div>
<form id="form-GETapi-comments" data-method="GET" data-path="api/comments" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-comments', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-comments" onclick="tryItOut('GETapi-comments');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-comments" onclick="cancelTryOut('GETapi-comments');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-comments" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/comments</code></b>
</p>
<p>
<label id="auth-GETapi-comments" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-comments" data-component="header"></label>
</p>
</form>


## Store a newly created COMMENTAIRE in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X POST \
    "http://localhost:8000/api/comments" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/comments"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "POST",
    headers,
}).then(response => response.json());
```


<div id="execution-results-POSTapi-comments" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-comments"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-comments"></code></pre>
</div>
<div id="execution-error-POSTapi-comments" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-comments"></code></pre>
</div>
<form id="form-POSTapi-comments" data-method="POST" data-path="api/comments" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-comments', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-comments" onclick="tryItOut('POSTapi-comments');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-comments" onclick="cancelTryOut('POSTapi-comments');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-comments" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/comments</code></b>
</p>
<p>
<label id="auth-POSTapi-comments" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="POSTapi-comments" data-component="header"></label>
</p>
</form>


## Display the specified COMMENTAIRE.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/comments/voluptas" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/comments/voluptas"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
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
    "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/StudentController.php",
    "line": 114,
    "trace": [
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/app\/Http\/Controllers\/StudentController.php",
            "line": 114,
            "function": "handleError",
            "class": "Illuminate\\Foundation\\Bootstrap\\HandleExceptions",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/Controller.php",
            "line": 54,
            "function": "showcomment",
            "class": "App\\Http\\Controllers\\StudentController",
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
<div id="execution-results-GETapi-comments--comment-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-comments--comment-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-comments--comment-"></code></pre>
</div>
<div id="execution-error-GETapi-comments--comment-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-comments--comment-"></code></pre>
</div>
<form id="form-GETapi-comments--comment-" data-method="GET" data-path="api/comments/{comment}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-comments--comment-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-comments--comment-" onclick="tryItOut('GETapi-comments--comment-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-comments--comment-" onclick="cancelTryOut('GETapi-comments--comment-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-comments--comment-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/comments/{comment}</code></b>
</p>
<p>
<label id="auth-GETapi-comments--comment-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-comments--comment-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>comment</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="comment" data-endpoint="GETapi-comments--comment-" data-component="url" required  hidden>
<br>

</p>
</form>


## Update the specified COMMENTAIRE in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X PUT \
    "http://localhost:8000/api/comments/vitae" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/comments/vitae"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "PUT",
    headers,
}).then(response => response.json());
```


<div id="execution-results-PUTapi-comments--comment-" hidden>
    <blockquote>Received response<span id="execution-response-status-PUTapi-comments--comment-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-PUTapi-comments--comment-"></code></pre>
</div>
<div id="execution-error-PUTapi-comments--comment-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-PUTapi-comments--comment-"></code></pre>
</div>
<form id="form-PUTapi-comments--comment-" data-method="PUT" data-path="api/comments/{comment}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('PUTapi-comments--comment-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-PUTapi-comments--comment-" onclick="tryItOut('PUTapi-comments--comment-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-PUTapi-comments--comment-" onclick="cancelTryOut('PUTapi-comments--comment-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-PUTapi-comments--comment-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-darkblue">PUT</small>
 <b><code>api/comments/{comment}</code></b>
</p>
<p>
<small class="badge badge-purple">PATCH</small>
 <b><code>api/comments/{comment}</code></b>
</p>
<p>
<label id="auth-PUTapi-comments--comment-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="PUTapi-comments--comment-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>comment</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="comment" data-endpoint="PUTapi-comments--comment-" data-component="url" required  hidden>
<br>

</p>
</form>


## Remove the specified COMMENTAIRE from storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/api/comments/omnis" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/comments/omnis"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "DELETE",
    headers,
}).then(response => response.json());
```


<div id="execution-results-DELETEapi-comments--comment-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEapi-comments--comment-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEapi-comments--comment-"></code></pre>
</div>
<div id="execution-error-DELETEapi-comments--comment-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEapi-comments--comment-"></code></pre>
</div>
<form id="form-DELETEapi-comments--comment-" data-method="DELETE" data-path="api/comments/{comment}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('DELETEapi-comments--comment-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEapi-comments--comment-" onclick="tryItOut('DELETEapi-comments--comment-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEapi-comments--comment-" onclick="cancelTryOut('DELETEapi-comments--comment-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEapi-comments--comment-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>api/comments/{comment}</code></b>
</p>
<p>
<label id="auth-DELETEapi-comments--comment-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="DELETEapi-comments--comment-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>comment</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="comment" data-endpoint="DELETEapi-comments--comment-" data-component="url" required  hidden>
<br>

</p>
</form>



