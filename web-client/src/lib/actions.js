export function clickOutside(node) {
    function handleClick(event) {
        if (
            node &&
            !node.contains(event.target) &&
            !event.defaultPrevented
        ) {
            node.dispatchEvent(new CustomEvent('outclick', { detail: node }));
        }
    }

    document.addEventListener("click", handleClick, true);
    return {
        destroy() {
            document.removeEventListener("click", handleClick, true);
        },
    };
}
