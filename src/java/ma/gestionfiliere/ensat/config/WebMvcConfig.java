package ma.gestionfiliere.ensat.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "ma.gestionfiliere.ensat")
@PropertySource(value = {"/WEB-INF/application.properties",
"/WEB-INF/mail.properties"})
public class WebMvcConfig extends WebMvcConfigurerAdapter {

    @Autowired
    private Environment environment;

    @Bean
    public ViewResolver getViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Bean
    public JdbcTemplate getJdbcTemplate() throws ClassNotFoundException {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
        dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
        dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
        dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        return jdbcTemplate;
    }
    
    @Bean
    public JavaMailSender getJavaMailSender(){
        JavaMailSenderImpl mail=new JavaMailSenderImpl();
        mail.setHost(environment.getProperty("mail.host"));
        mail.setPort(Integer.parseInt(environment.getProperty("mail.port")));
        mail.setUsername(environment.getProperty("mail.username"));
        mail.setPassword(environment.getProperty("mail.password"));
        mail.getJavaMailProperties().setProperty("mail.transport.protocol", "smtp");
        mail.getJavaMailProperties().setProperty("mail.smtp.auth", "true");
        mail.getJavaMailProperties().setProperty("mail.smtp.starttls.enable", "true");
        mail.getJavaMailProperties().setProperty("mail.debug", "true");
        return mail;
    }
}
