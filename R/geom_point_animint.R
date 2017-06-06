GeomPointAnimint <- ggplot2::ggproto("GeomPointAnimint", GeomPoint,
   draw_panel = function(self, data, panel_params, coord, animintParams) {
     # Hack to ensure that animintParams is detected as a parameter
     ggproto_parent(GeomPoint, self)$draw_panel(data, panel_params, coord)
   }
)

#' @export
geom_point_animint <- function (mapping = NULL, data = NULL, stat = "identity", position = "identity",
                                ..., na.rm = FALSE, animintParams = list(),
                                show.legend = NA, inherit.aes = TRUE){
  
  ggplot2::layer(data = data, mapping = mapping, stat = stat, geom = GeomPointAnimint, 
        position = position, show.legend = show.legend, inherit.aes = inherit.aes, 
        params = list(na.rm = na.rm, animintParams = animintParams, ...))
}
