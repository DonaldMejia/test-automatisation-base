import com.intuit.karate.junit5.Karate;

public class ConsultaFallida {
	static {
		System.setProperty("karate.ssl", "true");
	}
	@Karate.Test
	Karate testConsultaFallida() { return Karate.run("classpath:TestChapter/Get/consultafallida.feature");}
}
