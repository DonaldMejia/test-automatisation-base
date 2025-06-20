import com.intuit.karate.junit5.Karate;

public class ConsultaId {
	static {
		System.setProperty("karate.ssl", "true");
	}
	@Karate.Test
	Karate testConsultaId() { return Karate.run("classpath:TestChapter/Get/consultaId.feature");}
}
