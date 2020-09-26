const Config = {
    name: "user",
    scale: 1,
    Links: [
        [
            "School",
            [
                ["Canvas", "https://canvas.csun.edu"]
            ]
        ],
        [
            "Notes",
            [
                ["Personal Keep", "https://keep.google.com/u/0/#home"],
                ["School Keep", "https://keep.google.com/u/1/"]
            ]
        ],
        [
            "Dev",
            [
                ["Github", "http://github.com/"]
            ]
        ],
        [
            "Other",
            [
                ["YouTube", "https://youtube.com"],
                ["Reddit", "https://reddit.com"],
                ["Arch", "https://www.archlinux.org/"],
                ["Gmail", "https://gmail.com"]
            ]
        ]
    ]
}

const Main = (() => {
    const list = document.getElementById("list");
    const names = document.querySelectorAll("[data-Name]");
    const search = document.getElementById("search");
    const form = document.forms[0];

    const init = () => {
        list.innerHTML = Config.Links.map(([gName, Links]) => `
            <li>
                <h1 onclick="this.parentNode.classList.toggle('hideChildren')">${gName}</h1>
                <ul>
                    ${Links.map(([lName, url]) => `
                        <li>
                            <a href="${url}">${lName}</a>
                        </li>`
                    ).join("")}
                </ul>
            </li>` 
        ).join("")
        
        names.forEach(el => {
            el.innerText = Config.name;
        });

        document.addEventListener("keydown", e => e.key.length === 1 && search.focus());
        search.addEventListener("keydown", () => (window.event ? event.keyCode : e.which) == 13 && form.submit());
    };

    return {
        init,
    };
})();

Main.init()
