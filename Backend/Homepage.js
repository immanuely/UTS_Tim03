class Search {
    constructor(data) {
        this.data = data;
    }

    equal(text, keyword) {
        return text.toLowerCase().indexOf(keyword.toLowerCase()) == -1;
    }

    byTitle(keyword) {
        for (let i = 0; i < this.data.length; i++) {
            const product = this.data[i];
            let titleElement = product.querySelector(".namesproduct");
            if (titleElement) {
                let title = titleElement.innerText;
                if (this.equal(title, keyword)) {
                    product.style.display = "none";
                } else {
                    product.style.display = "";
                }
            } else {
                // Jika elemen .namesproduct tidak ditemukan, tampilkan pesan di konsol
                console.warn("Element with class 'namesproduct' not found in product", product);
            }
        }
    }
}

document.addEventListener("DOMContentLoaded", function () {
    let keyword = document.querySelector("#keyword");

    const search = () => {
        let products = document.querySelectorAll(".product");
        let search = new Search(products);
        search.byTitle(keyword.value);
    }

    // Tambahkan event listener ke input keyword
    keyword.addEventListener("keyup", search);
});class Search {
    constructor(data) {
        this.data = data;
    }

    equal(text, keyword) {
        return text.toLowerCase().indexOf(keyword.toLowerCase()) == -1;
    }

    byTitle(keyword) {
        for (let i = 0; i < this.data.length; i++) {
            const product = this.data[i];
            let titleElement = product.querySelector(".namesproduct");
            if (titleElement) {
                let title = titleElement.innerText;
                if (this.equal(title, keyword)) {
                    product.style.display = "none";
                } else {
                    product.style.display = "";
                }
            } else {
                // Jika elemen .namesproduct tidak ditemukan, tampilkan pesan di konsol
                console.warn("Element with class 'namesproduct' not found in product", product);
            }
        }
    }
}

document.addEventListener("DOMContentLoaded", function () {
    let keyword = document.querySelector("#keyword");

    const search = () => {
        let products = document.querySelectorAll(".product");
        let search = new Search(products);
        search.byTitle(keyword.value);
    }

    // Tambahkan event listener ke input keyword
    keyword.addEventListener("keyup", search);
});
