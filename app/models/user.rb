class User < ApplicationRecord
	has_many	:photos
	has_many	:points
	validates	:email,	presense: {message: "이메일을 반드시 입력하셔야 합니다."}
	validates	:email, uniqueness:	{message:	"이미 존재하는 이메일주소입니다.", case_sensitive: false}
	validates	:username, presense: {message: "사용자이름을 반드시 입력하셔야 합니다."}
	validates	:username, uniqueness: {message:	"이미 존재하는 사용자이름입니다.", case_sensitive: false}
	validates	:password, length: {minimum: 6, too_short:"최소 6자 이상의 비밀번호를 입력하셔야 합니다."}
end
