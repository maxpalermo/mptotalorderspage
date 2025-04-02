<div class="card-body" id="total-orders-badge">
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div class="d-flex justify-content-start align-items-center">
                <div class="mr-2">
                    <i class="material-icons">query_stats</i> Totale ricerca:
                    <span class="badge badge-success">{$totalSearch}</span>
                </div>
                <div class="ml-2">
                    <i class="material-icons">plagiarism</i> Totale pagina:
                    <span class="badge badge-success">{$totalPage}</span>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", (e) => {
        const totalOrdersBadge = document.getElementById("total-orders-badge");
        const orderGridPanel = document.getElementById("order_grid_panel");
        if (!orderGridPanel) {
            return;
        }
        const header = orderGridPanel.querySelector(".card-header");

        if (!header || !totalOrdersBadge) {
            return;
        }

        header.insertAdjacentElement("afterend", totalOrdersBadge);
    });
</script>