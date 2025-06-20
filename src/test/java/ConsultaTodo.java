import com.intuit.karate.junit5.Karate;

class ConsultaTodo {
	static {
		System.setProperty("karate.ssl", "true");
	}
	@Karate.Test
	Karate testConsultaTodo() { return Karate.run("classpath:TestChapter/Get/consultaTodo.feature");}
}
