// Include this for common XSS data
// Created 2016-08-22 by Aerstone
// Updated 2020-06-18 by Eric Getchell
// Updated 2021-01-26 by Jason Boehm
// Original Author: Chris Campbell
/*
Copyright (c) 2017 Quest Consultants LLC (DBA Aerstone)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFT-ARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

var xss_width = 500;

var xss_locations = xss_locations || [];

var xss_styles = {
    "modal": `text-align: center;
        width: ${xss_width}px;
        height: auto;
        color: black;
        padding: 5px;
        z-index: 999;
        word-wrap: break-word;
        background-color: white;
        border-style: solid;
        border-width: 2px;
        border-color: black;`,
    "header": "height: 100px;",
    "content": `padding: 10px;
        text-align: left;`,
    "overlay": "background: rgba(255,2,0,0.8)",
    "footer": `display: block;
        position: absolute;
        bottom: 0px;
        height: 40px;
        width: 100%;
        background: rgba(255,220,220,1);
        color: black;
        border-width: 3px;
        border-color: red;
        border-top-style: solid`,
    "footer_image": "float: left;",
    "footer_text": `text-align: center;
         margin-top: 10px;`,
    "footer_menu": `float: right;
        margin-top: 10px;
        margin-right: 10px;`,
};

var xss_open = () => {
    xss_close();

    const modal = xss_modal();
    const overlay = xss_overlay();

    modal.style.position = 'fixed';
    modal.style.top = '40px';
    modal.style.left = '0px';
    modal.style.right = '0px';
    modal.style.width = xss_width;
    modal.style.marginLeft = 'auto';
    modal.style.marginRight = 'auto';

    overlay.style.position = 'fixed';
    overlay.style.top = '0px';
    overlay.style.left = '0px';
    overlay.style.right = '0px';
    overlay.style.width = '100%';
    overlay.style.height = '100%';
    overlay.style.backgroundColor = 'rgba(100,0,0,0.4)';

    overlay.onclick = () => xss_close();

    document.body.appendChild(overlay);
    document.body.appendChild(modal);
};

var xss_close = () => {
    if (!document.getElementById('A_XSS') && !document.getElementById('XSSOverlay')) return;

    document.body.removeChild(document.getElementById('A_XSS'));
    document.body.removeChild(document.getElementById('XSSOverlay'));
    xss_close();
};

var xss_is_auto_enabled = () => {
    if (localStorage.getItem("A_XSSAuto") == undefined) {
        localStorage.setItem("A_XSSAuto", "true");
    }
    return localStorage.getItem("A_XSSAuto") == 'true' ? true : false;
};

var xss_toggle_auto = (cb) =>
    localStorage.setItem("A_XSSAuto", String(cb.checked));

var xss_footer = () => {
    let d;
    if (document.getElementById("A_XSSFooter")) {
        d = document.getElementById("A_XSSFooter");
        d.innerHtml = '';
    } else {
        d = document.createElement("div");
        d.id = 'A_XSSFooter';
    }

    d.innerHTML = `<div style="${xss_styles['footer']}">
        <div style="${xss_styles['footer_image']}">
            <img height="40px" src="data:image/png;base64,${company_logo}"/>
        </div>
        <div style="${xss_styles['footer_menu']}">
            Auto Open: <input id='A_XSSAutoCB' type='checkbox'
            ${xss_is_auto_enabled() ? "checked='true' " : ''}
            onclick='xss_toggle_auto(this)'/>
            <button onclick='xss_open()'>Open</button>
        </div>
        <div style="${xss_styles['footer_text']}">
            Cross Site Scripting (XSS)
            ${xss_locations.length > 1 ? ` x ${xss_locations.length}` : ''}
        </div>
    </div>`;

    return d;
};

var xss_header = () =>
    `<div style="${xss_styles['header']}">
        <img src='data:image/png;base64,${company_logo}'/>
        <div>Cross Site Scripting (XSS)
            ${xss_locations.length > 1 ? `<br>${xss_locations.length} Instances` : ''}
        </div>
    </div>`;

var xss_content = () =>
    `<div style="${xss_styles['content']}"><hr/>
        <p>Host: ${document.location.hostname}</p>
        <p>URL: ${document.location.pathname}</p>
        <p>Args: ${(document.location.href.split('?')[1])}</p><hr/>
        <p>Cookies:<br/> ${document.cookie}</p>
    </div>`;

var xss_overlay = () => {
    const d = document.createElement("div");
    d.id = 'XSSOverlay';
    d.innerHTML = `<div style="${xss_styles['overlay']}"></div>`;
    return d;
};

var xss_modal = () => {
    let d;
    if (document.getElementById("A_XSS")) {
        d = document.getElementById("A_XSS");
        d.innerHtml = '';
    } else {
        d = document.createElement("div");
        d.id = 'A_XSS';
    }

    d.innerHTML = `<div style="${xss_styles['modal']}">
        ${xss_header()}
        ${xss_content()}
    </div>`;

    return d;
};

var xss_pin_footer_top = () => { };

var xss_init = () => {
    // Create modal div
    xss_locations.push(document.currentScript);

    const footer = xss_footer();

    document.body.appendChild(footer);

    footer.style.position = 'fixed';
    footer.style.bottom = '0px';
    footer.style.left = '0px';
    footer.style.right = '0px';
    footer.style.height = '10px';
    footer.style.width = '100%';

    if (xss_is_auto_enabled()) xss_open();
    console.log("XSS Executed");
};

document.onkeypress = (e) => keyHandler(e);
document.onkeydown = (e) => keyHandler(e);

var keyHandler = (e) => {
    e = e || window.event;
    if ("key" in e) {
        if (e.key == "Escape" || e.key == "Esc") {
            xss_close();
        }
    }
    if (e.keyCode === 27) xss_close();
};

var company_logo = `
    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
    Cr7o+Bzg8/Beu0w8bqcOU6QAAAABJRU5ErkJggg==`;

xss_init();