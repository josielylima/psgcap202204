  public static void desafio_003()
        {
            Console.WriteLine("Informe Metros? ");
            string metro1 = Console.ReadLine();
            int metro2 = Convert.ToInt32(metro1);
            int cent = metro2 * 100;
            int mili = cent * 10;
            Console.WriteLine("valor centimetro é {0}, valor milimetro é {1}", cent, mili);


        }



        public static void desafio_004()
        {
            Console.WriteLine("informe o numero");
            string valor=Console.ReadLine();
            int num = Convert.ToInt32(valor);
            for (int i = 1; i <=10; i++) 
            {

                Console.WriteLine(num * i );
            }
        }

    }
}
            
