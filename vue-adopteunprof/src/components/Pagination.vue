<script>
export default {
	name: 'Pagination',
    props: {
        modelPage: {
            type: [String, Number],
            required: true
        },
        modelItemsPerPage: {
            type: [String, Number],
            required: true
        },
        modelNumberOfItems: {
            type: [String, Number],
            required: true
        },
    },

    computed: {
        page: {
            get() {
                return this.modelPage
            },
            set(page) {
                this.$emit('update:modelPage', page);
            }
        },

        lastPage() {
            return Math.ceil(this.modelNumberOfItems/this.modelItemsPerPage);
        },

        pages() {
            // reinitialize pages array before re running the method 
            let pages = [];

            for (let i = 1; i <= this.lastPage; i++) {
                pages.push(i);
            }

            return pages;
        },

        /*lastPage: {
            get() {
                return this.modelLastPage
            }
        },

        pages: {
            get() {
                return this.modelPages
            }
        },*/

        offset() {
            if(this.page < 3) {
                return 0;
            } else {
                return this.page - 3;
            }
        },
        
    },
}

</script>

<template>
    <div class="container">
        <nav aria-label="Pagination" class="my-4">
            <ul class="pagination">
                
                <li class="page-item" v-if="page != 1" @click="page = 1">
                    <a class="page-link">
                        <i class="bi bi-chevron-double-left"></i>
                    </a>
                </li>
                <li class="page-item" v-if="page != 1" @click="page--">
					<a class="page-link">
                        <i class="bi bi-chevron-left"></i>
                    </a>
				</li>
                <li class="page-item"
                    v-for="pageNumber in pages.slice(offset, page+3)" 
                    v-bind:key="pageNumber"
                    @click="page = pageNumber"
                    :class="{'active': page === pageNumber}">
                        <a class="page-link">{{pageNumber}}</a>
                </li>
                <li class="page-item">
                    <a @click="page++" v-if="page < pages.length" class="page-link">
                        <i class="bi bi-chevron-right"></i>
                    </a>
                </li>
                <li class="page-item" v-if="page < pages.length" @click="page = lastPage">
					<a class="page-link">
                        <i class="bi bi-chevron-double-right"></i>
                    </a>
				</li>

            </ul>
        </nav>
    </div>
</template>

<style scoped>
    .page-item {
        cursor: pointer;
    }

    .page-link {
        color:aqua;
    }

    .page-item.active .page-link {
        background-color:aqua;
        border-color:aqua;
    }
</style>