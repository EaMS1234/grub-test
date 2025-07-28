void kernel_main(void) 
{
  // Clears the VGA buffer
  for (int i = 0; i < 25; i++)
  {
    for (int j = 0; j < 80; j++)
    {
      *(char *)(0xb8000 + 2 * ((j * 25) + i)) = 0;
    }
  }
  
  // Prints '!' on the beggining of the buffer
  *(char *)0xb8000 = '!';
}

