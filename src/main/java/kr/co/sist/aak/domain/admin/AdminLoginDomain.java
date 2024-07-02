package kr.co.sist.aak.domain.admin;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class AdminLoginDomain {
	private String id,password,auth;
}
