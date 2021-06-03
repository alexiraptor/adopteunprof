# Professor management


## Display a listing of the PROFESSEUR.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/professor" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/professor"
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
<div id="execution-results-GETapi-professor" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-professor"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-professor"></code></pre>
</div>
<div id="execution-error-GETapi-professor" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-professor"></code></pre>
</div>
<form id="form-GETapi-professor" data-method="GET" data-path="api/professor" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-professor', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-professor" onclick="tryItOut('GETapi-professor');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-professor" onclick="cancelTryOut('GETapi-professor');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-professor" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/professor</code></b>
</p>
<p>
<label id="auth-GETapi-professor" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-professor" data-component="header"></label>
</p>
</form>


## Store a newly created PROFESSEUR in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X POST \
    "http://localhost:8000/api/professor" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"userID":"9","firstname":"Thomas","lastname":"Pr\u00e9sident","avatar":"corrupti","age":"12","adresse":"9 rue Parrot, 75012","phone":"0632784666","matieres":"Physique-Chimie","description":"Quel BG","information_bancaire":"Moulaga","annoncesID":"9","cours":"Physique-Chimie","commentaires":"Lol xD","historique_cours":"Physique-Chimie","historique_paiement":"Moulaga","archives_conversation":"Blablabla","rating":4}'

```

```javascript
const url = new URL(
    "http://localhost:8000/api/professor"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "userID": "9",
    "firstname": "Thomas",
    "lastname": "Pr\u00e9sident",
    "avatar": "corrupti",
    "age": "12",
    "adresse": "9 rue Parrot, 75012",
    "phone": "0632784666",
    "matieres": "Physique-Chimie",
    "description": "Quel BG",
    "information_bancaire": "Moulaga",
    "annoncesID": "9",
    "cours": "Physique-Chimie",
    "commentaires": "Lol xD",
    "historique_cours": "Physique-Chimie",
    "historique_paiement": "Moulaga",
    "archives_conversation": "Blablabla",
    "rating": 4
}

fetch(url, {
    method: "POST",
    headers,
    body: JSON.stringify(body),
}).then(response => response.json());
```


<div id="execution-results-POSTapi-professor" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-professor"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-professor"></code></pre>
</div>
<div id="execution-error-POSTapi-professor" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-professor"></code></pre>
</div>
<form id="form-POSTapi-professor" data-method="POST" data-path="api/professor" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-professor', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-professor" onclick="tryItOut('POSTapi-professor');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-professor" onclick="cancelTryOut('POSTapi-professor');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-professor" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/professor</code></b>
</p>
<p>
<label id="auth-POSTapi-professor" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="POSTapi-professor" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>Body Parameters</b></h4>
<p>
<b><code>userID</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="userID" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The id of the user.
</p>
<p>
<b><code>firstname</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="firstname" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The firstname of the user.
</p>
<p>
<b><code>lastname</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="lastname" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The lastname of the user.
</p>
<p>
<b><code>avatar</code></b>&nbsp;&nbsp;<small>longText</small>  &nbsp;
<input type="text" name="avatar" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The avatar of the user.
</p>
<p>
<b><code>age</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="age" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The age of the user.
</p>
<p>
<b><code>adresse</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="adresse" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The adresse of the user.
</p>
<p>
<b><code>phone</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="phone" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The phone of the user.
</p>
<p>
<b><code>matieres</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="matieres" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The matieres of the user.
</p>
<p>
<b><code>description</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="description" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The description of the user.
</p>
<p>
<b><code>information_bancaire</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="information_bancaire" data-endpoint="POSTapi-professor" data-component="body" required  hidden>
<br>
The information_bancaire of the user.
</p>
<p>
<b><code>annoncesID</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="annoncesID" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The annoncesID of the user.
</p>
<p>
<b><code>cours</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="cours" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The cours of the user.
</p>
<p>
<b><code>commentaires</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="commentaires" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The commentaires of the user.
</p>
<p>
<b><code>historique_cours</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="historique_cours" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The historique_cours of the user.
</p>
<p>
<b><code>historique_paiement</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="historique_paiement" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The historique_paiement of the user.
</p>
<p>
<b><code>archives_conversation</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="archives_conversation" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The archives_conversation of the user.
</p>
<p>
<b><code>rating</code></b>&nbsp;&nbsp;<small>integer</small>     <i>optional</i> &nbsp;
<input type="number" name="rating" data-endpoint="POSTapi-professor" data-component="body"  hidden>
<br>
The rating of the user.
</p>

</form>


## Display the specified PROFESSEUR.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://localhost:8000/api/professor/provident" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/professor/provident"
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
<div id="execution-results-GETapi-professor--professor-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-professor--professor-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-professor--professor-"></code></pre>
</div>
<div id="execution-error-GETapi-professor--professor-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-professor--professor-"></code></pre>
</div>
<form id="form-GETapi-professor--professor-" data-method="GET" data-path="api/professor/{professor}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-professor--professor-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-professor--professor-" onclick="tryItOut('GETapi-professor--professor-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-professor--professor-" onclick="cancelTryOut('GETapi-professor--professor-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-professor--professor-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/professor/{professor}</code></b>
</p>
<p>
<label id="auth-GETapi-professor--professor-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-professor--professor-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>professor</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="professor" data-endpoint="GETapi-professor--professor-" data-component="url" required  hidden>
<br>

</p>
</form>


## Update the specified PROFESSEUR in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X PUT \
    "http://localhost:8000/api/professor/accusantium" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"firstname":"Thomas","lastname":"Pr\u00e9sident","avatar":"et","age":"12","adresse":"9 rue Parrot, 75012","phone":"0632784666","matieres":"Physique-Chimie","description":"Quel BG","information_bancaire":"Moulaga","annoncesID":"9","cours":"Physique-Chimie","commentaires":"Lol xD","historique_cours":"Physique-Chimie","historique_paiement":"Moulaga","archives_conversation":"Blablabla","rating":4}'

```

```javascript
const url = new URL(
    "http://localhost:8000/api/professor/accusantium"
);

let headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI",
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "firstname": "Thomas",
    "lastname": "Pr\u00e9sident",
    "avatar": "et",
    "age": "12",
    "adresse": "9 rue Parrot, 75012",
    "phone": "0632784666",
    "matieres": "Physique-Chimie",
    "description": "Quel BG",
    "information_bancaire": "Moulaga",
    "annoncesID": "9",
    "cours": "Physique-Chimie",
    "commentaires": "Lol xD",
    "historique_cours": "Physique-Chimie",
    "historique_paiement": "Moulaga",
    "archives_conversation": "Blablabla",
    "rating": 4
}

fetch(url, {
    method: "PUT",
    headers,
    body: JSON.stringify(body),
}).then(response => response.json());
```


<div id="execution-results-PUTapi-professor--professor-" hidden>
    <blockquote>Received response<span id="execution-response-status-PUTapi-professor--professor-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-PUTapi-professor--professor-"></code></pre>
</div>
<div id="execution-error-PUTapi-professor--professor-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-PUTapi-professor--professor-"></code></pre>
</div>
<form id="form-PUTapi-professor--professor-" data-method="PUT" data-path="api/professor/{professor}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('PUTapi-professor--professor-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-PUTapi-professor--professor-" onclick="tryItOut('PUTapi-professor--professor-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-PUTapi-professor--professor-" onclick="cancelTryOut('PUTapi-professor--professor-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-PUTapi-professor--professor-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-darkblue">PUT</small>
 <b><code>api/professor/{professor}</code></b>
</p>
<p>
<small class="badge badge-purple">PATCH</small>
 <b><code>api/professor/{professor}</code></b>
</p>
<p>
<label id="auth-PUTapi-professor--professor-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="PUTapi-professor--professor-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>professor</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="professor" data-endpoint="PUTapi-professor--professor-" data-component="url" required  hidden>
<br>

</p>
<h4 class="fancy-heading-panel"><b>Body Parameters</b></h4>
<p>
<b><code>firstname</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="firstname" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The firstname of the user.
</p>
<p>
<b><code>lastname</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="lastname" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The lastname of the user.
</p>
<p>
<b><code>avatar</code></b>&nbsp;&nbsp;<small>longText</small>  &nbsp;
<input type="text" name="avatar" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The avatar of the user.
</p>
<p>
<b><code>age</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="age" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The age of the user.
</p>
<p>
<b><code>adresse</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="adresse" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The adresse of the user.
</p>
<p>
<b><code>phone</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="phone" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The phone of the user.
</p>
<p>
<b><code>matieres</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="matieres" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The matieres of the user.
</p>
<p>
<b><code>description</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="description" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The description of the user.
</p>
<p>
<b><code>information_bancaire</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="information_bancaire" data-endpoint="PUTapi-professor--professor-" data-component="body" required  hidden>
<br>
The information_bancaire of the user.
</p>
<p>
<b><code>annoncesID</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="annoncesID" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The annoncesID of the user.
</p>
<p>
<b><code>cours</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="cours" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The cours of the user.
</p>
<p>
<b><code>commentaires</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="commentaires" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The commentaires of the user.
</p>
<p>
<b><code>historique_cours</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="historique_cours" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The historique_cours of the user.
</p>
<p>
<b><code>historique_paiement</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="historique_paiement" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The historique_paiement of the user.
</p>
<p>
<b><code>archives_conversation</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="archives_conversation" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The archives_conversation of the user.
</p>
<p>
<b><code>rating</code></b>&nbsp;&nbsp;<small>integer</small>     <i>optional</i> &nbsp;
<input type="number" name="rating" data-endpoint="PUTapi-professor--professor-" data-component="body"  hidden>
<br>
The rating of the user.
</p>

</form>


## Remove the specified PROFESSEUR from storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X DELETE \
    "http://localhost:8000/api/professor/iusto" \
    -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost:8000/api/professor/iusto"
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


<div id="execution-results-DELETEapi-professor--professor-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEapi-professor--professor-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEapi-professor--professor-"></code></pre>
</div>
<div id="execution-error-DELETEapi-professor--professor-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEapi-professor--professor-"></code></pre>
</div>
<form id="form-DELETEapi-professor--professor-" data-method="DELETE" data-path="api/professor/{professor}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMGQzYWY4ZjE2N2E1MjA0Y2IwNDI2NGJjMmVlOTljN2FkODA5YzhkMWEyMmY0NmUxM2FiOWE0YjhlMDFiNTc2ZTEyZjY5Y2QzYzA1Yjk2NjEiLCJpYXQiOjE2MjI3MjcxNTUsIm5iZiI6MTYyMjcyNzE1NSwiZXhwIjoxNjU0MjYzMTU1LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.ssZWo--MituaFpYgbSv3YzN_CZdiphO7pi_sn0gwuTfSlrhFkD3w7xf5qS9BZrIPd-3CqJgTD2BEDUod5xjBMHuT7H8_xG0iaJRUhTrRxH8SNIYDzufyd33ilo9aD72VInbSi9jBYlnibUWVZmZqQxzzm2NVpvmOzKnkJPr_b3LjL1-jRiLwRJY9HsP4r9nmgTlQsx3_70QpHQNpy8E95wMbznYuCHKIQwNqpq7aepzqW8AKOmJXZsabIktcKD9XWNQ8-QFDZ1r3qUVaV7at08942ZaOZJaiA1VlSrLE1Ub9txGsCLhc9VAbHsJHbEUgeHBVTHSkBS21gk1E0YLeztDfDcnW0EpCpZi13MwNYbN62kI12YGBNryWhTglLpyKYpXnrfST6pBz72CUFBEXGE7hZuSk1w0u8eCMiMMt7zN3PedPwtqKQJoTOi3l0PhBc0gOm01_JeWX8Hh9JcjdNh7BasL4qRlUm1odXH_rQXqcQ8ZyqYw9tulY_V7f-z-6x-_bnYOtaLx8SxZiEm0Io_-JevEwdIArUMYhF3IsbvAci99Qnaj2p_IgdJSubsqKi8v5yz2ICREVtVb-RZh75W9ElCH6othTq4RUXoAFF6cYMrjtUkPikUcQ0alX-YspQvErsPUPn7py0JoSDY2yaxstfm_WylBK7ZTKGr2XMGI","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('DELETEapi-professor--professor-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEapi-professor--professor-" onclick="tryItOut('DELETEapi-professor--professor-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEapi-professor--professor-" onclick="cancelTryOut('DELETEapi-professor--professor-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEapi-professor--professor-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>api/professor/{professor}</code></b>
</p>
<p>
<label id="auth-DELETEapi-professor--professor-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="DELETEapi-professor--professor-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>professor</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="professor" data-endpoint="DELETEapi-professor--professor-" data-component="url" required  hidden>
<br>

</p>
</form>



