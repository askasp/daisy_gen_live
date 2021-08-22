defmodule <%= inspect context.web_module %>.ModalComponent do
  use <%= inspect context.web_module %>, :live_component

  @impl true
  def render(assigns) do
    ~L"""
    
<input type="checkbox" value=True id="<%%= @id %>" class="modal-toggle" checked> 
<div class="modal"
      phx-capture-click="close"
      phx-window-keydown="close"
      phx-key="escape"
      phx-target="#<%%= @id %>"
      phx-page-loading>

  <div class="modal-box">
        <%%= live_patch raw("&times;"), to: @return_to, class: "phx-modal-close" %>
        <%%= live_component @socket, @component, @opts %>

  </div>
</div>

    """
  end

  @impl true
  def handle_event("close", _, socket) do
    {:noreply, push_patch(socket, to: socket.assigns.return_to)}
  end
end

