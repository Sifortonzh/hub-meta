serve:
	@echo "Starting local server on http://localhost:5173 ..."
	python3 -m http.server 5173 --directory ./ --bind 0.0.0.0

tunnel:
	@echo "Starting Cloudflare Tunnel for hub-tunnel ..."
	cloudflared tunnel run hub-tunnel

start:
	@make serve & make tunnel
