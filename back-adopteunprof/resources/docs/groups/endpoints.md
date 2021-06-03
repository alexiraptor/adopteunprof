# Endpoints


## livewire/message/{name}




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/livewire/message/fuga" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/livewire/message/fuga"
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


<div id="execution-results-POSTlivewire-message--name-" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTlivewire-message--name-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTlivewire-message--name-"></code></pre>
</div>
<div id="execution-error-POSTlivewire-message--name-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTlivewire-message--name-"></code></pre>
</div>
<form id="form-POSTlivewire-message--name-" data-method="POST" data-path="livewire/message/{name}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSTlivewire-message--name-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTlivewire-message--name-" onclick="tryItOut('POSTlivewire-message--name-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTlivewire-message--name-" onclick="cancelTryOut('POSTlivewire-message--name-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTlivewire-message--name-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>livewire/message/{name}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>name</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="name" data-endpoint="POSTlivewire-message--name-" data-component="url" required  hidden>
<br>

</p>
</form>


## livewire/upload-file




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/livewire/upload-file" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/livewire/upload-file"
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


<div id="execution-results-POSTlivewire-upload-file" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTlivewire-upload-file"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTlivewire-upload-file"></code></pre>
</div>
<div id="execution-error-POSTlivewire-upload-file" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTlivewire-upload-file"></code></pre>
</div>
<form id="form-POSTlivewire-upload-file" data-method="POST" data-path="livewire/upload-file" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSTlivewire-upload-file', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTlivewire-upload-file" onclick="tryItOut('POSTlivewire-upload-file');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTlivewire-upload-file" onclick="cancelTryOut('POSTlivewire-upload-file');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTlivewire-upload-file" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>livewire/upload-file</code></b>
</p>
</form>


## livewire/preview-file/{filename}




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/livewire/preview-file/qui" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/livewire/preview-file/qui"
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


> Example response (401):

```json
{
    "message": "",
    "exception": "Symfony\\Component\\HttpKernel\\Exception\\HttpException",
    "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Application.php",
    "line": 1116,
    "trace": [
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/helpers.php",
            "line": 44,
            "function": "abort",
            "class": "Illuminate\\Foundation\\Application",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/helpers.php",
            "line": 85,
            "function": "abort"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/livewire\/livewire\/src\/Controllers\/FilePreviewHandler.php",
            "line": 13,
            "function": "abort_unless"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Routing\/ControllerDispatcher.php",
            "line": 48,
            "function": "handle",
            "class": "Livewire\\Controllers\\FilePreviewHandler",
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
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Foundation\/Http\/Middleware\/VerifyCsrfToken.php",
            "line": 78,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/View\/Middleware\/ShareErrorsFromSession.php",
            "line": 49,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\View\\Middleware\\ShareErrorsFromSession",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Session\/Middleware\/StartSession.php",
            "line": 121,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Session\/Middleware\/StartSession.php",
            "line": 64,
            "function": "handleStatefulRequest",
            "class": "Illuminate\\Session\\Middleware\\StartSession",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Session\\Middleware\\StartSession",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Cookie\/Middleware\/AddQueuedCookiesToResponse.php",
            "line": 37,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Cookie\/Middleware\/EncryptCookies.php",
            "line": 67,
            "function": "Illuminate\\Pipeline\\{closure}",
            "class": "Illuminate\\Pipeline\\Pipeline",
            "type": "->"
        },
        {
            "file": "\/Users\/osx\/Github\/PFF\/back-adopteunprof\/vendor\/laravel\/framework\/src\/Illuminate\/Pipeline\/Pipeline.php",
            "line": 167,
            "function": "handle",
            "class": "Illuminate\\Cookie\\Middleware\\EncryptCookies",
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
            "line": 38,
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
            "line": 38,
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
<div id="execution-results-GETlivewire-preview-file--filename-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETlivewire-preview-file--filename-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETlivewire-preview-file--filename-"></code></pre>
</div>
<div id="execution-error-GETlivewire-preview-file--filename-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETlivewire-preview-file--filename-"></code></pre>
</div>
<form id="form-GETlivewire-preview-file--filename-" data-method="GET" data-path="livewire/preview-file/{filename}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETlivewire-preview-file--filename-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETlivewire-preview-file--filename-" onclick="tryItOut('GETlivewire-preview-file--filename-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETlivewire-preview-file--filename-" onclick="cancelTryOut('GETlivewire-preview-file--filename-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETlivewire-preview-file--filename-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>livewire/preview-file/{filename}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>filename</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="filename" data-endpoint="GETlivewire-preview-file--filename-" data-component="url" required  hidden>
<br>

</p>
</form>


## livewire/livewire.js




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/livewire/livewire.js" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/livewire/livewire.js"
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


<div id="execution-results-GETlivewire-livewire.js" hidden>
    <blockquote>Received response<span id="execution-response-status-GETlivewire-livewire.js"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETlivewire-livewire.js"></code></pre>
</div>
<div id="execution-error-GETlivewire-livewire.js" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETlivewire-livewire.js"></code></pre>
</div>
<form id="form-GETlivewire-livewire.js" data-method="GET" data-path="livewire/livewire.js" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETlivewire-livewire.js', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETlivewire-livewire.js" onclick="tryItOut('GETlivewire-livewire.js');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETlivewire-livewire.js" onclick="cancelTryOut('GETlivewire-livewire.js');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETlivewire-livewire.js" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>livewire/livewire.js</code></b>
</p>
</form>


## livewire/livewire.js.map




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/livewire/livewire.js.map" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/livewire/livewire.js.map"
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


<div id="execution-results-GETlivewire-livewire.js.map" hidden>
    <blockquote>Received response<span id="execution-response-status-GETlivewire-livewire.js.map"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETlivewire-livewire.js.map"></code></pre>
</div>
<div id="execution-error-GETlivewire-livewire.js.map" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETlivewire-livewire.js.map"></code></pre>
</div>
<form id="form-GETlivewire-livewire.js.map" data-method="GET" data-path="livewire/livewire.js.map" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GETlivewire-livewire.js.map', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETlivewire-livewire.js.map" onclick="tryItOut('GETlivewire-livewire.js.map');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETlivewire-livewire.js.map" onclick="cancelTryOut('GETlivewire-livewire.js.map');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETlivewire-livewire.js.map" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>livewire/livewire.js.map</code></b>
</p>
</form>


## Authorize a client to access the user&#039;s account.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/oauth/authorize" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/authorize"
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


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GEToauth-authorize" hidden>
    <blockquote>Received response<span id="execution-response-status-GEToauth-authorize"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GEToauth-authorize"></code></pre>
</div>
<div id="execution-error-GEToauth-authorize" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GEToauth-authorize"></code></pre>
</div>
<form id="form-GEToauth-authorize" data-method="GET" data-path="oauth/authorize" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GEToauth-authorize', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GEToauth-authorize" onclick="tryItOut('GEToauth-authorize');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GEToauth-authorize" onclick="cancelTryOut('GEToauth-authorize');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GEToauth-authorize" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>oauth/authorize</code></b>
</p>
</form>


## Approve the authorization request.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/oauth/authorize" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/authorize"
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


<div id="execution-results-POSToauth-authorize" hidden>
    <blockquote>Received response<span id="execution-response-status-POSToauth-authorize"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSToauth-authorize"></code></pre>
</div>
<div id="execution-error-POSToauth-authorize" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSToauth-authorize"></code></pre>
</div>
<form id="form-POSToauth-authorize" data-method="POST" data-path="oauth/authorize" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSToauth-authorize', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSToauth-authorize" onclick="tryItOut('POSToauth-authorize');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSToauth-authorize" onclick="cancelTryOut('POSToauth-authorize');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSToauth-authorize" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>oauth/authorize</code></b>
</p>
</form>


## Deny the authorization request.




> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/oauth/authorize" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/authorize"
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


<div id="execution-results-DELETEoauth-authorize" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEoauth-authorize"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEoauth-authorize"></code></pre>
</div>
<div id="execution-error-DELETEoauth-authorize" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEoauth-authorize"></code></pre>
</div>
<form id="form-DELETEoauth-authorize" data-method="DELETE" data-path="oauth/authorize" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('DELETEoauth-authorize', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEoauth-authorize" onclick="tryItOut('DELETEoauth-authorize');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEoauth-authorize" onclick="cancelTryOut('DELETEoauth-authorize');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEoauth-authorize" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>oauth/authorize</code></b>
</p>
</form>


## Authorize a client to access the user&#039;s account.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/oauth/token" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/token"
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


<div id="execution-results-POSToauth-token" hidden>
    <blockquote>Received response<span id="execution-response-status-POSToauth-token"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSToauth-token"></code></pre>
</div>
<div id="execution-error-POSToauth-token" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSToauth-token"></code></pre>
</div>
<form id="form-POSToauth-token" data-method="POST" data-path="oauth/token" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSToauth-token', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSToauth-token" onclick="tryItOut('POSToauth-token');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSToauth-token" onclick="cancelTryOut('POSToauth-token');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSToauth-token" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>oauth/token</code></b>
</p>
</form>


## Get all of the authorized tokens for the authenticated user.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/oauth/tokens" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/tokens"
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


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GEToauth-tokens" hidden>
    <blockquote>Received response<span id="execution-response-status-GEToauth-tokens"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GEToauth-tokens"></code></pre>
</div>
<div id="execution-error-GEToauth-tokens" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GEToauth-tokens"></code></pre>
</div>
<form id="form-GEToauth-tokens" data-method="GET" data-path="oauth/tokens" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GEToauth-tokens', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GEToauth-tokens" onclick="tryItOut('GEToauth-tokens');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GEToauth-tokens" onclick="cancelTryOut('GEToauth-tokens');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GEToauth-tokens" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>oauth/tokens</code></b>
</p>
</form>


## Delete the given token.




> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/oauth/tokens/vel" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/tokens/vel"
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


<div id="execution-results-DELETEoauth-tokens--token_id-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEoauth-tokens--token_id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEoauth-tokens--token_id-"></code></pre>
</div>
<div id="execution-error-DELETEoauth-tokens--token_id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEoauth-tokens--token_id-"></code></pre>
</div>
<form id="form-DELETEoauth-tokens--token_id-" data-method="DELETE" data-path="oauth/tokens/{token_id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('DELETEoauth-tokens--token_id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEoauth-tokens--token_id-" onclick="tryItOut('DELETEoauth-tokens--token_id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEoauth-tokens--token_id-" onclick="cancelTryOut('DELETEoauth-tokens--token_id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEoauth-tokens--token_id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>oauth/tokens/{token_id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>token_id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="token_id" data-endpoint="DELETEoauth-tokens--token_id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Get a fresh transient token cookie for the authenticated user.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/oauth/token/refresh" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/token/refresh"
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


<div id="execution-results-POSToauth-token-refresh" hidden>
    <blockquote>Received response<span id="execution-response-status-POSToauth-token-refresh"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSToauth-token-refresh"></code></pre>
</div>
<div id="execution-error-POSToauth-token-refresh" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSToauth-token-refresh"></code></pre>
</div>
<form id="form-POSToauth-token-refresh" data-method="POST" data-path="oauth/token/refresh" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSToauth-token-refresh', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSToauth-token-refresh" onclick="tryItOut('POSToauth-token-refresh');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSToauth-token-refresh" onclick="cancelTryOut('POSToauth-token-refresh');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSToauth-token-refresh" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>oauth/token/refresh</code></b>
</p>
</form>


## Get all of the clients for the authenticated user.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/oauth/clients" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/clients"
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


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GEToauth-clients" hidden>
    <blockquote>Received response<span id="execution-response-status-GEToauth-clients"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GEToauth-clients"></code></pre>
</div>
<div id="execution-error-GEToauth-clients" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GEToauth-clients"></code></pre>
</div>
<form id="form-GEToauth-clients" data-method="GET" data-path="oauth/clients" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GEToauth-clients', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GEToauth-clients" onclick="tryItOut('GEToauth-clients');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GEToauth-clients" onclick="cancelTryOut('GEToauth-clients');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GEToauth-clients" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>oauth/clients</code></b>
</p>
</form>


## Store a new client.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/oauth/clients" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/clients"
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


<div id="execution-results-POSToauth-clients" hidden>
    <blockquote>Received response<span id="execution-response-status-POSToauth-clients"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSToauth-clients"></code></pre>
</div>
<div id="execution-error-POSToauth-clients" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSToauth-clients"></code></pre>
</div>
<form id="form-POSToauth-clients" data-method="POST" data-path="oauth/clients" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSToauth-clients', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSToauth-clients" onclick="tryItOut('POSToauth-clients');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSToauth-clients" onclick="cancelTryOut('POSToauth-clients');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSToauth-clients" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>oauth/clients</code></b>
</p>
</form>


## Update the given client.




> Example request:

```bash
curl -X PUT \
    "http://localhost:8000/oauth/clients/consequatur" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/clients/consequatur"
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


<div id="execution-results-PUToauth-clients--client_id-" hidden>
    <blockquote>Received response<span id="execution-response-status-PUToauth-clients--client_id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-PUToauth-clients--client_id-"></code></pre>
</div>
<div id="execution-error-PUToauth-clients--client_id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-PUToauth-clients--client_id-"></code></pre>
</div>
<form id="form-PUToauth-clients--client_id-" data-method="PUT" data-path="oauth/clients/{client_id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('PUToauth-clients--client_id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-PUToauth-clients--client_id-" onclick="tryItOut('PUToauth-clients--client_id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-PUToauth-clients--client_id-" onclick="cancelTryOut('PUToauth-clients--client_id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-PUToauth-clients--client_id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-darkblue">PUT</small>
 <b><code>oauth/clients/{client_id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>client_id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="client_id" data-endpoint="PUToauth-clients--client_id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Delete the given client.




> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/oauth/clients/consequatur" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/clients/consequatur"
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


<div id="execution-results-DELETEoauth-clients--client_id-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEoauth-clients--client_id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEoauth-clients--client_id-"></code></pre>
</div>
<div id="execution-error-DELETEoauth-clients--client_id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEoauth-clients--client_id-"></code></pre>
</div>
<form id="form-DELETEoauth-clients--client_id-" data-method="DELETE" data-path="oauth/clients/{client_id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('DELETEoauth-clients--client_id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEoauth-clients--client_id-" onclick="tryItOut('DELETEoauth-clients--client_id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEoauth-clients--client_id-" onclick="cancelTryOut('DELETEoauth-clients--client_id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEoauth-clients--client_id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>oauth/clients/{client_id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>client_id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="client_id" data-endpoint="DELETEoauth-clients--client_id-" data-component="url" required  hidden>
<br>

</p>
</form>


## Get all of the available scopes for the application.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/oauth/scopes" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/scopes"
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


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GEToauth-scopes" hidden>
    <blockquote>Received response<span id="execution-response-status-GEToauth-scopes"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GEToauth-scopes"></code></pre>
</div>
<div id="execution-error-GEToauth-scopes" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GEToauth-scopes"></code></pre>
</div>
<form id="form-GEToauth-scopes" data-method="GET" data-path="oauth/scopes" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GEToauth-scopes', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GEToauth-scopes" onclick="tryItOut('GEToauth-scopes');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GEToauth-scopes" onclick="cancelTryOut('GEToauth-scopes');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GEToauth-scopes" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>oauth/scopes</code></b>
</p>
</form>


## Get all of the personal access tokens for the authenticated user.




> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/oauth/personal-access-tokens" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/personal-access-tokens"
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


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```
<div id="execution-results-GEToauth-personal-access-tokens" hidden>
    <blockquote>Received response<span id="execution-response-status-GEToauth-personal-access-tokens"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GEToauth-personal-access-tokens"></code></pre>
</div>
<div id="execution-error-GEToauth-personal-access-tokens" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GEToauth-personal-access-tokens"></code></pre>
</div>
<form id="form-GEToauth-personal-access-tokens" data-method="GET" data-path="oauth/personal-access-tokens" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('GEToauth-personal-access-tokens', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GEToauth-personal-access-tokens" onclick="tryItOut('GEToauth-personal-access-tokens');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GEToauth-personal-access-tokens" onclick="cancelTryOut('GEToauth-personal-access-tokens');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GEToauth-personal-access-tokens" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>oauth/personal-access-tokens</code></b>
</p>
</form>


## Create a new personal access token for the user.




> Example request:

```bash
curl -X POST \
    "http://localhost:8000/oauth/personal-access-tokens" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/personal-access-tokens"
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


<div id="execution-results-POSToauth-personal-access-tokens" hidden>
    <blockquote>Received response<span id="execution-response-status-POSToauth-personal-access-tokens"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSToauth-personal-access-tokens"></code></pre>
</div>
<div id="execution-error-POSToauth-personal-access-tokens" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSToauth-personal-access-tokens"></code></pre>
</div>
<form id="form-POSToauth-personal-access-tokens" data-method="POST" data-path="oauth/personal-access-tokens" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('POSToauth-personal-access-tokens', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSToauth-personal-access-tokens" onclick="tryItOut('POSToauth-personal-access-tokens');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSToauth-personal-access-tokens" onclick="cancelTryOut('POSToauth-personal-access-tokens');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSToauth-personal-access-tokens" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>oauth/personal-access-tokens</code></b>
</p>
</form>


## Delete the given token.




> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/oauth/personal-access-tokens/explicabo" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"
```

```javascript
const url = new URL(
    "http://localhost:8000/oauth/personal-access-tokens/explicabo"
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


<div id="execution-results-DELETEoauth-personal-access-tokens--token_id-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEoauth-personal-access-tokens--token_id-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEoauth-personal-access-tokens--token_id-"></code></pre>
</div>
<div id="execution-error-DELETEoauth-personal-access-tokens--token_id-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEoauth-personal-access-tokens--token_id-"></code></pre>
</div>
<form id="form-DELETEoauth-personal-access-tokens--token_id-" data-method="DELETE" data-path="oauth/personal-access-tokens/{token_id}" data-authed="0" data-hasfiles="0" data-headers='{"Content-Type":"application\/json","Accept":"application\/json","Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI"}' onsubmit="event.preventDefault(); executeTryOut('DELETEoauth-personal-access-tokens--token_id-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEoauth-personal-access-tokens--token_id-" onclick="tryItOut('DELETEoauth-personal-access-tokens--token_id-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEoauth-personal-access-tokens--token_id-" onclick="cancelTryOut('DELETEoauth-personal-access-tokens--token_id-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEoauth-personal-access-tokens--token_id-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>oauth/personal-access-tokens/{token_id}</code></b>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>token_id</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="token_id" data-endpoint="DELETEoauth-personal-access-tokens--token_id-" data-component="url" required  hidden>
<br>

</p>
</form>



