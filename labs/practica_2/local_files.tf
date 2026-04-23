resource "local_file" "productos" {
  count    = 5
  content  = "Lista de productos actualizado"
  filename = "productos-${random_string.sufijo[count.index].result}.txt"
}
