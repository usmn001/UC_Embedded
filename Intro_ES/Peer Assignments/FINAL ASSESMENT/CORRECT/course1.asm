
course1.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 7a 3f 00 00    	push   0x3f7a(%rip)        # 4fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 7b 3f 00 00 	bnd jmp *0x3f7b(%rip)        # 4fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 6d 3f 00 00 	bnd jmp *0x3f6d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001090 <free@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 15 3f 00 00 	bnd jmp *0x3f15(%rip)        # 4fb0 <free@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 0d 3f 00 00 	bnd jmp *0x3f0d(%rip)        # 4fb8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <__stack_chk_fail@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 05 3f 00 00 	bnd jmp *0x3f05(%rip)        # 4fc0 <__stack_chk_fail@GLIBC_2.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <printf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 fd 3e 00 00 	bnd jmp *0x3efd(%rip)        # 4fc8 <printf@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <malloc@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 f5 3e 00 00 	bnd jmp *0x3ef5(%rip)        # 4fd0 <malloc@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 11c9 <main>
    10ff:	ff 15 d3 3e 00 00    	call   *0x3ed3(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 3e 00 00 	lea    0x3ef9(%rip),%rdi        # 5010 <__TMC_END__>
    1117:	48 8d 05 f2 3e 00 00 	lea    0x3ef2(%rip),%rax        # 5010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 b6 3e 00 00 	mov    0x3eb6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 3e 00 00 	lea    0x3ec9(%rip),%rdi        # 5010 <__TMC_END__>
    1147:	48 8d 35 c2 3e 00 00 	lea    0x3ec2(%rip),%rsi        # 5010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 3e 00 00 	mov    0x3e85(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d 85 3e 00 00 00 	cmpb   $0x0,0x3e85(%rip)        # 5010 <__TMC_END__>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 62 3e 00 00 	cmpq   $0x0,0x3e62(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 3e 00 00 	mov    0x3e66(%rip),%rdi        # 5008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 5d 3e 00 00 01 	movb   $0x1,0x3e5d(%rip)        # 5010 <__TMC_END__>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	ret    
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>

00000000000011c9 <main>:
    11c9:	f3 0f 1e fa          	endbr64 
    11cd:	55                   	push   %rbp
    11ce:	48 89 e5             	mov    %rsp,%rbp
    11d1:	e8 0a 11 00 00       	call   22e0 <course1>
    11d6:	b8 00 00 00 00       	mov    $0x0,%eax
    11db:	5d                   	pop    %rbp
    11dc:	c3                   	ret    

00000000000011dd <set_value>:
    11dd:	f3 0f 1e fa          	endbr64 
    11e1:	55                   	push   %rbp
    11e2:	48 89 e5             	mov    %rsp,%rbp
    11e5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11e9:	89 75 f4             	mov    %esi,-0xc(%rbp)
    11ec:	89 d0                	mov    %edx,%eax
    11ee:	88 45 f0             	mov    %al,-0x10(%rbp)
    11f1:	8b 55 f4             	mov    -0xc(%rbp),%edx
    11f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11f8:	48 01 c2             	add    %rax,%rdx
    11fb:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    11ff:	88 02                	mov    %al,(%rdx)
    1201:	90                   	nop
    1202:	5d                   	pop    %rbp
    1203:	c3                   	ret    

0000000000001204 <clear_value>:
    1204:	f3 0f 1e fa          	endbr64 
    1208:	55                   	push   %rbp
    1209:	48 89 e5             	mov    %rsp,%rbp
    120c:	48 83 ec 10          	sub    $0x10,%rsp
    1210:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1214:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1217:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    121a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    121e:	ba 00 00 00 00       	mov    $0x0,%edx
    1223:	89 ce                	mov    %ecx,%esi
    1225:	48 89 c7             	mov    %rax,%rdi
    1228:	e8 b0 ff ff ff       	call   11dd <set_value>
    122d:	90                   	nop
    122e:	c9                   	leave  
    122f:	c3                   	ret    

0000000000001230 <get_value>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	55                   	push   %rbp
    1235:	48 89 e5             	mov    %rsp,%rbp
    1238:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    123c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    123f:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1242:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1246:	48 01 d0             	add    %rdx,%rax
    1249:	0f b6 00             	movzbl (%rax),%eax
    124c:	5d                   	pop    %rbp
    124d:	c3                   	ret    

000000000000124e <set_all>:
    124e:	f3 0f 1e fa          	endbr64 
    1252:	55                   	push   %rbp
    1253:	48 89 e5             	mov    %rsp,%rbp
    1256:	48 83 ec 20          	sub    $0x20,%rsp
    125a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    125e:	89 f0                	mov    %esi,%eax
    1260:	89 55 e0             	mov    %edx,-0x20(%rbp)
    1263:	88 45 e4             	mov    %al,-0x1c(%rbp)
    1266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    126d:	eb 19                	jmp    1288 <set_all+0x3a>
    126f:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
    1273:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    1276:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    127a:	89 ce                	mov    %ecx,%esi
    127c:	48 89 c7             	mov    %rax,%rdi
    127f:	e8 59 ff ff ff       	call   11dd <set_value>
    1284:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1288:	8b 45 fc             	mov    -0x4(%rbp),%eax
    128b:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    128e:	72 df                	jb     126f <set_all+0x21>
    1290:	90                   	nop
    1291:	90                   	nop
    1292:	c9                   	leave  
    1293:	c3                   	ret    

0000000000001294 <clear_all>:
    1294:	f3 0f 1e fa          	endbr64 
    1298:	55                   	push   %rbp
    1299:	48 89 e5             	mov    %rsp,%rbp
    129c:	48 83 ec 10          	sub    $0x10,%rsp
    12a0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12a4:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12a7:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12ae:	be 00 00 00 00       	mov    $0x0,%esi
    12b3:	48 89 c7             	mov    %rax,%rdi
    12b6:	e8 93 ff ff ff       	call   124e <set_all>
    12bb:	90                   	nop
    12bc:	c9                   	leave  
    12bd:	c3                   	ret    

00000000000012be <my_memmove>:
    12be:	f3 0f 1e fa          	endbr64 
    12c2:	55                   	push   %rbp
    12c3:	48 89 e5             	mov    %rsp,%rbp
    12c6:	48 83 ec 30          	sub    $0x30,%rsp
    12ca:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12ce:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    12d2:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    12d6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    12dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12e1:	48 89 c7             	mov    %rax,%rdi
    12e4:	e8 e7 fd ff ff       	call   10d0 <malloc@plt>
    12e9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12ed:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    12f4:	eb 1d                	jmp    1313 <my_memmove+0x55>
    12f6:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12fd:	48 01 d0             	add    %rdx,%rax
    1300:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    1303:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1307:	48 01 ca             	add    %rcx,%rdx
    130a:	0f b6 00             	movzbl (%rax),%eax
    130d:	88 02                	mov    %al,(%rdx)
    130f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1313:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1316:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    131a:	77 da                	ja     12f6 <my_memmove+0x38>
    131c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1323:	eb 1d                	jmp    1342 <my_memmove+0x84>
    1325:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1328:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    132c:	48 01 d0             	add    %rdx,%rax
    132f:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    1332:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1336:	48 01 ca             	add    %rcx,%rdx
    1339:	0f b6 00             	movzbl (%rax),%eax
    133c:	88 02                	mov    %al,(%rdx)
    133e:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1342:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1345:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    1349:	77 da                	ja     1325 <my_memmove+0x67>
    134b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 81 01 00 00       	call   14d8 <free_words>
    1357:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    135b:	c9                   	leave  
    135c:	c3                   	ret    

000000000000135d <my_memcopy>:
    135d:	f3 0f 1e fa          	endbr64 
    1361:	55                   	push   %rbp
    1362:	48 89 e5             	mov    %rsp,%rbp
    1365:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1369:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    136d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1371:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1378:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    137f:	eb 21                	jmp    13a2 <my_memcopy+0x45>
    1381:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1385:	48 8d 42 01          	lea    0x1(%rdx),%rax
    1389:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    138d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1391:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1395:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    1399:	0f b6 12             	movzbl (%rdx),%edx
    139c:	88 10                	mov    %dl,(%rax)
    139e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    13a2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13a5:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    13a9:	77 d6                	ja     1381 <my_memcopy+0x24>
    13ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13af:	5d                   	pop    %rbp
    13b0:	c3                   	ret    

00000000000013b1 <my_memset>:
    13b1:	f3 0f 1e fa          	endbr64 
    13b5:	55                   	push   %rbp
    13b6:	48 89 e5             	mov    %rsp,%rbp
    13b9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    13bd:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    13c1:	89 d0                	mov    %edx,%eax
    13c3:	88 45 dc             	mov    %al,-0x24(%rbp)
    13c6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    13cd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    13d4:	eb 14                	jmp    13ea <my_memset+0x39>
    13d6:	8b 55 fc             	mov    -0x4(%rbp),%edx
    13d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13dd:	48 01 c2             	add    %rax,%rdx
    13e0:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    13e4:	88 02                	mov    %al,(%rdx)
    13e6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    13ea:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13ed:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    13f1:	77 e3                	ja     13d6 <my_memset+0x25>
    13f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13f7:	5d                   	pop    %rbp
    13f8:	c3                   	ret    

00000000000013f9 <my_memzero>:
    13f9:	f3 0f 1e fa          	endbr64 
    13fd:	55                   	push   %rbp
    13fe:	48 89 e5             	mov    %rsp,%rbp
    1401:	48 83 ec 10          	sub    $0x10,%rsp
    1405:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1409:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    140d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1411:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1415:	ba 00 00 00 00       	mov    $0x0,%edx
    141a:	48 89 ce             	mov    %rcx,%rsi
    141d:	48 89 c7             	mov    %rax,%rdi
    1420:	e8 8c ff ff ff       	call   13b1 <my_memset>
    1425:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1429:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    142d:	c9                   	leave  
    142e:	c3                   	ret    

000000000000142f <my_reverse>:
    142f:	f3 0f 1e fa          	endbr64 
    1433:	55                   	push   %rbp
    1434:	48 89 e5             	mov    %rsp,%rbp
    1437:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    143b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    143f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1446:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    144d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1454:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1458:	83 e8 01             	sub    $0x1,%eax
    145b:	89 45 fc             	mov    %eax,-0x4(%rbp)
    145e:	eb 41                	jmp    14a1 <my_reverse+0x72>
    1460:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1463:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1467:	48 01 d0             	add    %rdx,%rax
    146a:	0f b6 00             	movzbl (%rax),%eax
    146d:	88 45 f7             	mov    %al,-0x9(%rbp)
    1470:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1473:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1477:	48 01 d0             	add    %rdx,%rax
    147a:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    147d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1481:	48 01 ca             	add    %rcx,%rdx
    1484:	0f b6 00             	movzbl (%rax),%eax
    1487:	88 02                	mov    %al,(%rdx)
    1489:	8b 55 fc             	mov    -0x4(%rbp),%edx
    148c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1490:	48 01 c2             	add    %rax,%rdx
    1493:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    1497:	88 02                	mov    %al,(%rdx)
    1499:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    149d:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
    14a1:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14a4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    14a8:	48 d1 ea             	shr    %rdx
    14ab:	48 39 d0             	cmp    %rdx,%rax
    14ae:	72 b0                	jb     1460 <my_reverse+0x31>
    14b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14b4:	5d                   	pop    %rbp
    14b5:	c3                   	ret    

00000000000014b6 <reserve_words>:
    14b6:	f3 0f 1e fa          	endbr64 
    14ba:	55                   	push   %rbp
    14bb:	48 89 e5             	mov    %rsp,%rbp
    14be:	48 83 ec 10          	sub    $0x10,%rsp
    14c2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14ca:	48 c1 e0 02          	shl    $0x2,%rax
    14ce:	48 89 c7             	mov    %rax,%rdi
    14d1:	e8 fa fb ff ff       	call   10d0 <malloc@plt>
    14d6:	c9                   	leave  
    14d7:	c3                   	ret    

00000000000014d8 <free_words>:
    14d8:	f3 0f 1e fa          	endbr64 
    14dc:	55                   	push   %rbp
    14dd:	48 89 e5             	mov    %rsp,%rbp
    14e0:	48 83 ec 10          	sub    $0x10,%rsp
    14e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14ec:	48 89 c7             	mov    %rax,%rdi
    14ef:	e8 9c fb ff ff       	call   1090 <free@plt>
    14f4:	90                   	nop
    14f5:	c9                   	leave  
    14f6:	c3                   	ret    

00000000000014f7 <print_statistics>:
    14f7:	f3 0f 1e fa          	endbr64 
    14fb:	55                   	push   %rbp
    14fc:	48 89 e5             	mov    %rsp,%rbp
    14ff:	48 83 ec 20          	sub    $0x20,%rsp
    1503:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1507:	89 f0                	mov    %esi,%eax
    1509:	88 45 e4             	mov    %al,-0x1c(%rbp)
    150c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1511:	75 0a                	jne    151d <print_statistics+0x26>
    1513:	b8 01 00 00 00       	mov    $0x1,%eax
    1518:	e9 04 01 00 00       	jmp    1621 <print_statistics+0x12a>
    151d:	0f b6 55 e4          	movzbl -0x1c(%rbp),%edx
    1521:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1525:	89 d6                	mov    %edx,%esi
    1527:	48 89 c7             	mov    %rax,%rdi
    152a:	e8 ac 01 00 00       	call   16db <find_mean>
    152f:	66 0f 7e c0          	movd   %xmm0,%eax
    1533:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1536:	66 0f ef c9          	pxor   %xmm1,%xmm1
    153a:	f3 0f 5a 4d fc       	cvtss2sd -0x4(%rbp),%xmm1
    153f:	66 48 0f 7e c8       	movq   %xmm1,%rax
    1544:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1549:	48 8d 05 b4 1a 00 00 	lea    0x1ab4(%rip),%rax        # 3004 <_IO_stdin_used+0x4>
    1550:	48 89 c7             	mov    %rax,%rdi
    1553:	b8 01 00 00 00       	mov    $0x1,%eax
    1558:	e8 63 fb ff ff       	call   10c0 <printf@plt>
    155d:	0f b6 55 e4          	movzbl -0x1c(%rbp),%edx
    1561:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1565:	89 d6                	mov    %edx,%esi
    1567:	48 89 c7             	mov    %rax,%rdi
    156a:	e8 cc 00 00 00       	call   163b <find_median>
    156f:	66 0f 7e c0          	movd   %xmm0,%eax
    1573:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1576:	66 0f ef d2          	pxor   %xmm2,%xmm2
    157a:	f3 0f 5a 55 fc       	cvtss2sd -0x4(%rbp),%xmm2
    157f:	66 48 0f 7e d0       	movq   %xmm2,%rax
    1584:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1589:	48 8d 05 84 1a 00 00 	lea    0x1a84(%rip),%rax        # 3014 <_IO_stdin_used+0x14>
    1590:	48 89 c7             	mov    %rax,%rdi
    1593:	b8 01 00 00 00       	mov    $0x1,%eax
    1598:	e8 23 fb ff ff       	call   10c0 <printf@plt>
    159d:	0f b6 55 e4          	movzbl -0x1c(%rbp),%edx
    15a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15a5:	89 d6                	mov    %edx,%esi
    15a7:	48 89 c7             	mov    %rax,%rdi
    15aa:	e8 9c 01 00 00       	call   174b <find_maximum>
    15af:	88 45 fb             	mov    %al,-0x5(%rbp)
    15b2:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    15b6:	89 c6                	mov    %eax,%esi
    15b8:	48 8d 05 67 1a 00 00 	lea    0x1a67(%rip),%rax        # 3026 <_IO_stdin_used+0x26>
    15bf:	48 89 c7             	mov    %rax,%rdi
    15c2:	b8 00 00 00 00       	mov    $0x0,%eax
    15c7:	e8 f4 fa ff ff       	call   10c0 <printf@plt>
    15cc:	0f b6 55 e4          	movzbl -0x1c(%rbp),%edx
    15d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15d4:	89 d6                	mov    %edx,%esi
    15d6:	48 89 c7             	mov    %rax,%rdi
    15d9:	e8 9d 01 00 00       	call   177b <find_minimum>
    15de:	88 45 fb             	mov    %al,-0x5(%rbp)
    15e1:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    15e5:	89 c6                	mov    %eax,%esi
    15e7:	48 8d 05 4b 1a 00 00 	lea    0x1a4b(%rip),%rax        # 3039 <_IO_stdin_used+0x39>
    15ee:	48 89 c7             	mov    %rax,%rdi
    15f1:	b8 00 00 00 00       	mov    $0x0,%eax
    15f6:	e8 c5 fa ff ff       	call   10c0 <printf@plt>
    15fb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15ff:	0f 2e 45 fc          	ucomiss -0x4(%rbp),%xmm0
    1603:	7a 10                	jp     1615 <print_statistics+0x11e>
    1605:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1609:	0f 2e 45 fc          	ucomiss -0x4(%rbp),%xmm0
    160d:	75 06                	jne    1615 <print_statistics+0x11e>
    160f:	80 7d fb 00          	cmpb   $0x0,-0x5(%rbp)
    1613:	74 07                	je     161c <print_statistics+0x125>
    1615:	b8 02 00 00 00       	mov    $0x2,%eax
    161a:	eb 05                	jmp    1621 <print_statistics+0x12a>
    161c:	b8 00 00 00 00       	mov    $0x0,%eax
    1621:	c9                   	leave  
    1622:	c3                   	ret    

0000000000001623 <print_array>:
    1623:	f3 0f 1e fa          	endbr64 
    1627:	55                   	push   %rbp
    1628:	48 89 e5             	mov    %rsp,%rbp
    162b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    162f:	89 f0                	mov    %esi,%eax
    1631:	88 45 f4             	mov    %al,-0xc(%rbp)
    1634:	b8 00 00 00 00       	mov    $0x0,%eax
    1639:	5d                   	pop    %rbp
    163a:	c3                   	ret    

000000000000163b <find_median>:
    163b:	f3 0f 1e fa          	endbr64 
    163f:	55                   	push   %rbp
    1640:	48 89 e5             	mov    %rsp,%rbp
    1643:	48 83 ec 10          	sub    $0x10,%rsp
    1647:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    164b:	89 f0                	mov    %esi,%eax
    164d:	88 45 f4             	mov    %al,-0xc(%rbp)
    1650:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    1654:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1658:	89 d6                	mov    %edx,%esi
    165a:	48 89 c7             	mov    %rax,%rdi
    165d:	e8 54 01 00 00       	call   17b6 <sort_array>
    1662:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    1666:	83 e0 01             	and    $0x1,%eax
    1669:	84 c0                	test   %al,%al
    166b:	75 4e                	jne    16bb <find_median+0x80>
    166d:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    1671:	d0 e8                	shr    %al
    1673:	0f b6 d0             	movzbl %al,%edx
    1676:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    167a:	48 01 d0             	add    %rdx,%rax
    167d:	0f b6 00             	movzbl (%rax),%eax
    1680:	0f b6 d0             	movzbl %al,%edx
    1683:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    1687:	83 e8 01             	sub    $0x1,%eax
    168a:	89 c1                	mov    %eax,%ecx
    168c:	c1 e9 1f             	shr    $0x1f,%ecx
    168f:	01 c8                	add    %ecx,%eax
    1691:	d1 f8                	sar    %eax
    1693:	48 63 c8             	movslq %eax,%rcx
    1696:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    169a:	48 01 c8             	add    %rcx,%rax
    169d:	0f b6 00             	movzbl (%rax),%eax
    16a0:	0f b6 c0             	movzbl %al,%eax
    16a3:	01 d0                	add    %edx,%eax
    16a5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16a9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    16ad:	f3 0f 10 0d 97 19 00 	movss  0x1997(%rip),%xmm1        # 304c <_IO_stdin_used+0x4c>
    16b4:	00 
    16b5:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    16b9:	eb 1e                	jmp    16d9 <find_median+0x9e>
    16bb:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    16bf:	d0 e8                	shr    %al
    16c1:	0f b6 d0             	movzbl %al,%edx
    16c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16c8:	48 01 d0             	add    %rdx,%rax
    16cb:	0f b6 00             	movzbl (%rax),%eax
    16ce:	0f b6 c0             	movzbl %al,%eax
    16d1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16d5:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    16d9:	c9                   	leave  
    16da:	c3                   	ret    

00000000000016db <find_mean>:
    16db:	f3 0f 1e fa          	endbr64 
    16df:	55                   	push   %rbp
    16e0:	48 89 e5             	mov    %rsp,%rbp
    16e3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    16e7:	89 f0                	mov    %esi,%eax
    16e9:	88 45 e4             	mov    %al,-0x1c(%rbp)
    16ec:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16f0:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
    16f5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    16fc:	eb 2d                	jmp    172b <find_mean+0x50>
    16fe:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1701:	48 63 d0             	movslq %eax,%rdx
    1704:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1708:	48 01 d0             	add    %rdx,%rax
    170b:	0f b6 00             	movzbl (%rax),%eax
    170e:	0f b6 c0             	movzbl %al,%eax
    1711:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1715:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1719:	f3 0f 10 4d f8       	movss  -0x8(%rbp),%xmm1
    171e:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1722:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
    1727:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    172b:	0f b6 45 e4          	movzbl -0x1c(%rbp),%eax
    172f:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    1732:	7c ca                	jl     16fe <find_mean+0x23>
    1734:	0f b6 45 e4          	movzbl -0x1c(%rbp),%eax
    1738:	66 0f ef c9          	pxor   %xmm1,%xmm1
    173c:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
    1740:	f3 0f 10 45 f8       	movss  -0x8(%rbp),%xmm0
    1745:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    1749:	5d                   	pop    %rbp
    174a:	c3                   	ret    

000000000000174b <find_maximum>:
    174b:	f3 0f 1e fa          	endbr64 
    174f:	55                   	push   %rbp
    1750:	48 89 e5             	mov    %rsp,%rbp
    1753:	48 83 ec 10          	sub    $0x10,%rsp
    1757:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    175b:	89 f0                	mov    %esi,%eax
    175d:	88 45 f4             	mov    %al,-0xc(%rbp)
    1760:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    1764:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1768:	89 d6                	mov    %edx,%esi
    176a:	48 89 c7             	mov    %rax,%rdi
    176d:	e8 44 00 00 00       	call   17b6 <sort_array>
    1772:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1776:	0f b6 00             	movzbl (%rax),%eax
    1779:	c9                   	leave  
    177a:	c3                   	ret    

000000000000177b <find_minimum>:
    177b:	f3 0f 1e fa          	endbr64 
    177f:	55                   	push   %rbp
    1780:	48 89 e5             	mov    %rsp,%rbp
    1783:	48 83 ec 10          	sub    $0x10,%rsp
    1787:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    178b:	89 f0                	mov    %esi,%eax
    178d:	88 45 f4             	mov    %al,-0xc(%rbp)
    1790:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    1794:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1798:	89 d6                	mov    %edx,%esi
    179a:	48 89 c7             	mov    %rax,%rdi
    179d:	e8 14 00 00 00       	call   17b6 <sort_array>
    17a2:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    17a6:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    17aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17ae:	48 01 d0             	add    %rdx,%rax
    17b1:	0f b6 00             	movzbl (%rax),%eax
    17b4:	c9                   	leave  
    17b5:	c3                   	ret    

00000000000017b6 <sort_array>:
    17b6:	f3 0f 1e fa          	endbr64 
    17ba:	55                   	push   %rbp
    17bb:	48 89 e5             	mov    %rsp,%rbp
    17be:	48 83 ec 20          	sub    $0x20,%rsp
    17c2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17c6:	89 f0                	mov    %esi,%eax
    17c8:	88 45 e4             	mov    %al,-0x1c(%rbp)
    17cb:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    17d0:	75 0a                	jne    17dc <sort_array+0x26>
    17d2:	b8 01 00 00 00       	mov    $0x1,%eax
    17d7:	e9 a7 00 00 00       	jmp    1883 <sort_array+0xcd>
    17dc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    17e3:	e9 83 00 00 00       	jmp    186b <sort_array+0xb5>
    17e8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    17ef:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    17f6:	eb 5a                	jmp    1852 <sort_array+0x9c>
    17f8:	8b 45 f8             	mov    -0x8(%rbp),%eax
    17fb:	48 63 d0             	movslq %eax,%rdx
    17fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1802:	48 01 d0             	add    %rdx,%rax
    1805:	0f b6 10             	movzbl (%rax),%edx
    1808:	8b 45 f8             	mov    -0x8(%rbp),%eax
    180b:	48 98                	cltq   
    180d:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1811:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1815:	48 01 c8             	add    %rcx,%rax
    1818:	0f b6 00             	movzbl (%rax),%eax
    181b:	38 c2                	cmp    %al,%dl
    181d:	73 2f                	jae    184e <sort_array+0x98>
    181f:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1822:	48 98                	cltq   
    1824:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1828:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    182c:	48 01 c2             	add    %rax,%rdx
    182f:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1832:	48 63 c8             	movslq %eax,%rcx
    1835:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1839:	48 01 c8             	add    %rcx,%rax
    183c:	48 89 d6             	mov    %rdx,%rsi
    183f:	48 89 c7             	mov    %rax,%rdi
    1842:	e8 3e 00 00 00       	call   1885 <swap>
    1847:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    184e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1852:	0f b6 45 e4          	movzbl -0x1c(%rbp),%eax
    1856:	2b 45 f4             	sub    -0xc(%rbp),%eax
    1859:	83 e8 01             	sub    $0x1,%eax
    185c:	39 45 f8             	cmp    %eax,-0x8(%rbp)
    185f:	7c 97                	jl     17f8 <sort_array+0x42>
    1861:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1865:	74 16                	je     187d <sort_array+0xc7>
    1867:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    186b:	0f b6 45 e4          	movzbl -0x1c(%rbp),%eax
    186f:	83 e8 01             	sub    $0x1,%eax
    1872:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1875:	0f 8c 6d ff ff ff    	jl     17e8 <sort_array+0x32>
    187b:	eb 01                	jmp    187e <sort_array+0xc8>
    187d:	90                   	nop
    187e:	b8 00 00 00 00       	mov    $0x0,%eax
    1883:	c9                   	leave  
    1884:	c3                   	ret    

0000000000001885 <swap>:
    1885:	f3 0f 1e fa          	endbr64 
    1889:	55                   	push   %rbp
    188a:	48 89 e5             	mov    %rsp,%rbp
    188d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1891:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1895:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    189a:	74 07                	je     18a3 <swap+0x1e>
    189c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    18a1:	75 07                	jne    18aa <swap+0x25>
    18a3:	b8 01 00 00 00       	mov    $0x1,%eax
    18a8:	eb 58                	jmp    1902 <swap+0x7d>
    18aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18ae:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    18b2:	75 07                	jne    18bb <swap+0x36>
    18b4:	b8 02 00 00 00       	mov    $0x2,%eax
    18b9:	eb 47                	jmp    1902 <swap+0x7d>
    18bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18bf:	0f b6 10             	movzbl (%rax),%edx
    18c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18c6:	0f b6 00             	movzbl (%rax),%eax
    18c9:	01 c2                	add    %eax,%edx
    18cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18cf:	88 10                	mov    %dl,(%rax)
    18d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18d5:	0f b6 10             	movzbl (%rax),%edx
    18d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18dc:	0f b6 00             	movzbl (%rax),%eax
    18df:	29 c2                	sub    %eax,%edx
    18e1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18e5:	88 10                	mov    %dl,(%rax)
    18e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18eb:	0f b6 10             	movzbl (%rax),%edx
    18ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18f2:	0f b6 00             	movzbl (%rax),%eax
    18f5:	29 c2                	sub    %eax,%edx
    18f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18fb:	88 10                	mov    %dl,(%rax)
    18fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1902:	5d                   	pop    %rbp
    1903:	c3                   	ret    

0000000000001904 <my_itoa>:
    1904:	f3 0f 1e fa          	endbr64 
    1908:	55                   	push   %rbp
    1909:	48 89 e5             	mov    %rsp,%rbp
    190c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    190f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1913:	89 55 e8             	mov    %edx,-0x18(%rbp)
    1916:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    191a:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    191e:	c6 45 fc 00          	movb   $0x0,-0x4(%rbp)
    1922:	c6 45 fd 00          	movb   $0x0,-0x3(%rbp)
    1926:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    192a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    192f:	74 0c                	je     193d <my_itoa+0x39>
    1931:	83 7d e8 01          	cmpl   $0x1,-0x18(%rbp)
    1935:	76 06                	jbe    193d <my_itoa+0x39>
    1937:	83 7d e8 10          	cmpl   $0x10,-0x18(%rbp)
    193b:	76 0a                	jbe    1947 <my_itoa+0x43>
    193d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1942:	e9 ff 00 00 00       	jmp    1a46 <my_itoa+0x142>
    1947:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    194b:	75 1c                	jne    1969 <my_itoa+0x65>
    194d:	80 45 fb 01          	addb   $0x1,-0x5(%rbp)
    1951:	0f b6 55 fb          	movzbl -0x5(%rbp),%edx
    1955:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1959:	48 01 d0             	add    %rdx,%rax
    195c:	c6 00 00             	movb   $0x0,(%rax)
    195f:	b8 01 00 00 00       	mov    $0x1,%eax
    1964:	e9 dd 00 00 00       	jmp    1a46 <my_itoa+0x142>
    1969:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    196d:	79 3d                	jns    19ac <my_itoa+0xa8>
    196f:	83 7d e8 0a          	cmpl   $0xa,-0x18(%rbp)
    1973:	75 37                	jne    19ac <my_itoa+0xa8>
    1975:	f7 5d ec             	negl   -0x14(%rbp)
    1978:	c6 45 fd 01          	movb   $0x1,-0x3(%rbp)
    197c:	eb 2e                	jmp    19ac <my_itoa+0xa8>
    197e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1981:	ba 00 00 00 00       	mov    $0x0,%edx
    1986:	f7 75 e8             	divl   -0x18(%rbp)
    1989:	89 d1                	mov    %edx,%ecx
    198b:	0f b6 55 fb          	movzbl -0x5(%rbp),%edx
    198f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1993:	48 01 d0             	add    %rdx,%rax
    1996:	89 ca                	mov    %ecx,%edx
    1998:	88 10                	mov    %dl,(%rax)
    199a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    199d:	ba 00 00 00 00       	mov    $0x0,%edx
    19a2:	f7 75 e8             	divl   -0x18(%rbp)
    19a5:	89 45 ec             	mov    %eax,-0x14(%rbp)
    19a8:	80 45 fb 01          	addb   $0x1,-0x5(%rbp)
    19ac:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    19b0:	75 cc                	jne    197e <my_itoa+0x7a>
    19b2:	80 7d fd 00          	cmpb   $0x0,-0x3(%rbp)
    19b6:	74 17                	je     19cf <my_itoa+0xcb>
    19b8:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    19bc:	8d 50 01             	lea    0x1(%rax),%edx
    19bf:	88 55 fb             	mov    %dl,-0x5(%rbp)
    19c2:	0f b6 d0             	movzbl %al,%edx
    19c5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19c9:	48 01 d0             	add    %rdx,%rax
    19cc:	c6 00 2d             	movb   $0x2d,(%rax)
    19cf:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    19d3:	88 45 ff             	mov    %al,-0x1(%rbp)
    19d6:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    19da:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    19de:	83 e8 01             	sub    $0x1,%eax
    19e1:	88 45 fc             	mov    %al,-0x4(%rbp)
    19e4:	eb 51                	jmp    1a37 <my_itoa+0x133>
    19e6:	0f b6 55 fb          	movzbl -0x5(%rbp),%edx
    19ea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19ee:	48 01 d0             	add    %rdx,%rax
    19f1:	0f b6 00             	movzbl (%rax),%eax
    19f4:	88 45 fe             	mov    %al,-0x2(%rbp)
    19f7:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    19fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    19ff:	48 01 d0             	add    %rdx,%rax
    1a02:	0f b6 4d fb          	movzbl -0x5(%rbp),%ecx
    1a06:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1a0a:	48 01 ca             	add    %rcx,%rdx
    1a0d:	0f b6 00             	movzbl (%rax),%eax
    1a10:	88 02                	mov    %al,(%rdx)
    1a12:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1a16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1a1a:	48 01 c2             	add    %rax,%rdx
    1a1d:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1a21:	88 02                	mov    %al,(%rdx)
    1a23:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    1a27:	83 c0 01             	add    $0x1,%eax
    1a2a:	88 45 fb             	mov    %al,-0x5(%rbp)
    1a2d:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
    1a31:	83 e8 01             	sub    $0x1,%eax
    1a34:	88 45 fc             	mov    %al,-0x4(%rbp)
    1a37:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1a3b:	d0 e8                	shr    %al
    1a3d:	38 45 fb             	cmp    %al,-0x5(%rbp)
    1a40:	72 a4                	jb     19e6 <my_itoa+0xe2>
    1a42:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1a46:	5d                   	pop    %rbp
    1a47:	c3                   	ret    

0000000000001a48 <my_atoi>:
    1a48:	f3 0f 1e fa          	endbr64 
    1a4c:	55                   	push   %rbp
    1a4d:	48 89 e5             	mov    %rsp,%rbp
    1a50:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a54:	89 f0                	mov    %esi,%eax
    1a56:	89 55 e0             	mov    %edx,-0x20(%rbp)
    1a59:	88 45 e4             	mov    %al,-0x1c(%rbp)
    1a5c:	c6 45 f9 00          	movb   $0x0,-0x7(%rbp)
    1a60:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    1a64:	c6 45 fa 00          	movb   $0x0,-0x6(%rbp)
    1a68:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1a6f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1a74:	74 12                	je     1a88 <my_atoi+0x40>
    1a76:	80 7d e4 00          	cmpb   $0x0,-0x1c(%rbp)
    1a7a:	74 0c                	je     1a88 <my_atoi+0x40>
    1a7c:	83 7d e0 01          	cmpl   $0x1,-0x20(%rbp)
    1a80:	76 06                	jbe    1a88 <my_atoi+0x40>
    1a82:	83 7d e0 10          	cmpl   $0x10,-0x20(%rbp)
    1a86:	76 07                	jbe    1a8f <my_atoi+0x47>
    1a88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a8d:	eb 71                	jmp    1b00 <my_atoi+0xb8>
    1a8f:	0f b6 55 f9          	movzbl -0x7(%rbp),%edx
    1a93:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a97:	48 01 d0             	add    %rdx,%rax
    1a9a:	0f b6 00             	movzbl (%rax),%eax
    1a9d:	3c 2d                	cmp    $0x2d,%al
    1a9f:	75 4a                	jne    1aeb <my_atoi+0xa3>
    1aa1:	c6 45 f9 01          	movb   $0x1,-0x7(%rbp)
    1aa5:	c6 45 fa 01          	movb   $0x1,-0x6(%rbp)
    1aa9:	eb 40                	jmp    1aeb <my_atoi+0xa3>
    1aab:	0f b6 55 f9          	movzbl -0x7(%rbp),%edx
    1aaf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ab3:	48 01 d0             	add    %rdx,%rax
    1ab6:	0f b6 00             	movzbl (%rax),%eax
    1ab9:	88 45 fb             	mov    %al,-0x5(%rbp)
    1abc:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    1ac0:	8b 55 e0             	mov    -0x20(%rbp),%edx
    1ac3:	83 ea 01             	sub    $0x1,%edx
    1ac6:	39 d0                	cmp    %edx,%eax
    1ac8:	76 07                	jbe    1ad1 <my_atoi+0x89>
    1aca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1acf:	eb 2f                	jmp    1b00 <my_atoi+0xb8>
    1ad1:	0f b6 55 fb          	movzbl -0x5(%rbp),%edx
    1ad5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1ad8:	0f af 45 e0          	imul   -0x20(%rbp),%eax
    1adc:	01 d0                	add    %edx,%eax
    1ade:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1ae1:	0f b6 45 f9          	movzbl -0x7(%rbp),%eax
    1ae5:	83 c0 01             	add    $0x1,%eax
    1ae8:	88 45 f9             	mov    %al,-0x7(%rbp)
    1aeb:	0f b6 45 f9          	movzbl -0x7(%rbp),%eax
    1aef:	3a 45 e4             	cmp    -0x1c(%rbp),%al
    1af2:	72 b7                	jb     1aab <my_atoi+0x63>
    1af4:	80 7d fa 00          	cmpb   $0x0,-0x6(%rbp)
    1af8:	74 03                	je     1afd <my_atoi+0xb5>
    1afa:	f7 5d fc             	negl   -0x4(%rbp)
    1afd:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b00:	5d                   	pop    %rbp
    1b01:	c3                   	ret    

0000000000001b02 <test_data1>:
    1b02:	f3 0f 1e fa          	endbr64 
    1b06:	55                   	push   %rbp
    1b07:	48 89 e5             	mov    %rsp,%rbp
    1b0a:	48 83 ec 20          	sub    $0x20,%rsp
    1b0e:	c7 45 ec 00 f0 ff ff 	movl   $0xfffff000,-0x14(%rbp)
    1b15:	48 8d 05 34 15 00 00 	lea    0x1534(%rip),%rax        # 3050 <_IO_stdin_used+0x50>
    1b1c:	48 89 c7             	mov    %rax,%rdi
    1b1f:	e8 7c f5 ff ff       	call   10a0 <puts@plt>
    1b24:	bf 0a 00 00 00       	mov    $0xa,%edi
    1b29:	e8 88 f9 ff ff       	call   14b6 <reserve_words>
    1b2e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b32:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1b37:	75 0a                	jne    1b43 <test_data1+0x41>
    1b39:	b8 01 00 00 00       	mov    $0x1,%eax
    1b3e:	e9 8a 00 00 00       	jmp    1bcd <test_data1+0xcb>
    1b43:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1b47:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b4a:	ba 10 00 00 00       	mov    $0x10,%edx
    1b4f:	48 89 ce             	mov    %rcx,%rsi
    1b52:	89 c7                	mov    %eax,%edi
    1b54:	e8 ab fd ff ff       	call   1904 <my_itoa>
    1b59:	0f b6 c0             	movzbl %al,%eax
    1b5c:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1b5f:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1b62:	0f b6 c8             	movzbl %al,%ecx
    1b65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b69:	ba 10 00 00 00       	mov    $0x10,%edx
    1b6e:	89 ce                	mov    %ecx,%esi
    1b70:	48 89 c7             	mov    %rax,%rdi
    1b73:	e8 d0 fe ff ff       	call   1a48 <my_atoi>
    1b78:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1b7b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b7e:	89 c6                	mov    %eax,%esi
    1b80:	48 8d 05 d8 14 00 00 	lea    0x14d8(%rip),%rax        # 305f <_IO_stdin_used+0x5f>
    1b87:	48 89 c7             	mov    %rax,%rdi
    1b8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b8f:	e8 2c f5 ff ff       	call   10c0 <printf@plt>
    1b94:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1b97:	89 c6                	mov    %eax,%esi
    1b99:	48 8d 05 d5 14 00 00 	lea    0x14d5(%rip),%rax        # 3075 <_IO_stdin_used+0x75>
    1ba0:	48 89 c7             	mov    %rax,%rdi
    1ba3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba8:	e8 13 f5 ff ff       	call   10c0 <printf@plt>
    1bad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bb1:	48 89 c7             	mov    %rax,%rdi
    1bb4:	e8 1f f9 ff ff       	call   14d8 <free_words>
    1bb9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1bbc:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1bbf:	74 07                	je     1bc8 <test_data1+0xc6>
    1bc1:	b8 01 00 00 00       	mov    $0x1,%eax
    1bc6:	eb 05                	jmp    1bcd <test_data1+0xcb>
    1bc8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bcd:	c9                   	leave  
    1bce:	c3                   	ret    

0000000000001bcf <test_data2>:
    1bcf:	f3 0f 1e fa          	endbr64 
    1bd3:	55                   	push   %rbp
    1bd4:	48 89 e5             	mov    %rsp,%rbp
    1bd7:	48 83 ec 20          	sub    $0x20,%rsp
    1bdb:	c7 45 ec 40 e2 01 00 	movl   $0x1e240,-0x14(%rbp)
    1be2:	48 8d 05 a8 14 00 00 	lea    0x14a8(%rip),%rax        # 3091 <_IO_stdin_used+0x91>
    1be9:	48 89 c7             	mov    %rax,%rdi
    1bec:	e8 af f4 ff ff       	call   10a0 <puts@plt>
    1bf1:	bf 0a 00 00 00       	mov    $0xa,%edi
    1bf6:	e8 bb f8 ff ff       	call   14b6 <reserve_words>
    1bfb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1bff:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1c04:	75 0a                	jne    1c10 <test_data2+0x41>
    1c06:	b8 01 00 00 00       	mov    $0x1,%eax
    1c0b:	e9 8a 00 00 00       	jmp    1c9a <test_data2+0xcb>
    1c10:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1c14:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1c17:	ba 0a 00 00 00       	mov    $0xa,%edx
    1c1c:	48 89 ce             	mov    %rcx,%rsi
    1c1f:	89 c7                	mov    %eax,%edi
    1c21:	e8 de fc ff ff       	call   1904 <my_itoa>
    1c26:	0f b6 c0             	movzbl %al,%eax
    1c29:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1c2c:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1c2f:	0f b6 c8             	movzbl %al,%ecx
    1c32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c36:	ba 0a 00 00 00       	mov    $0xa,%edx
    1c3b:	89 ce                	mov    %ecx,%esi
    1c3d:	48 89 c7             	mov    %rax,%rdi
    1c40:	e8 03 fe ff ff       	call   1a48 <my_atoi>
    1c45:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1c48:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1c4b:	89 c6                	mov    %eax,%esi
    1c4d:	48 8d 05 4b 14 00 00 	lea    0x144b(%rip),%rax        # 309f <_IO_stdin_used+0x9f>
    1c54:	48 89 c7             	mov    %rax,%rdi
    1c57:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5c:	e8 5f f4 ff ff       	call   10c0 <printf@plt>
    1c61:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1c64:	89 c6                	mov    %eax,%esi
    1c66:	48 8d 05 08 14 00 00 	lea    0x1408(%rip),%rax        # 3075 <_IO_stdin_used+0x75>
    1c6d:	48 89 c7             	mov    %rax,%rdi
    1c70:	b8 00 00 00 00       	mov    $0x0,%eax
    1c75:	e8 46 f4 ff ff       	call   10c0 <printf@plt>
    1c7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c7e:	48 89 c7             	mov    %rax,%rdi
    1c81:	e8 52 f8 ff ff       	call   14d8 <free_words>
    1c86:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1c89:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1c8c:	74 07                	je     1c95 <test_data2+0xc6>
    1c8e:	b8 01 00 00 00       	mov    $0x1,%eax
    1c93:	eb 05                	jmp    1c9a <test_data2+0xcb>
    1c95:	b8 00 00 00 00       	mov    $0x0,%eax
    1c9a:	c9                   	leave  
    1c9b:	c3                   	ret    

0000000000001c9c <test_memmove1>:
    1c9c:	f3 0f 1e fa          	endbr64 
    1ca0:	55                   	push   %rbp
    1ca1:	48 89 e5             	mov    %rsp,%rbp
    1ca4:	48 83 ec 20          	sub    $0x20,%rsp
    1ca8:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1cac:	48 8d 05 0a 14 00 00 	lea    0x140a(%rip),%rax        # 30bd <_IO_stdin_used+0xbd>
    1cb3:	48 89 c7             	mov    %rax,%rdi
    1cb6:	e8 e5 f3 ff ff       	call   10a0 <puts@plt>
    1cbb:	bf 08 00 00 00       	mov    $0x8,%edi
    1cc0:	e8 f1 f7 ff ff       	call   14b6 <reserve_words>
    1cc5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1cc9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1cce:	75 0a                	jne    1cda <test_memmove1+0x3e>
    1cd0:	b8 01 00 00 00       	mov    $0x1,%eax
    1cd5:	e9 b6 00 00 00       	jmp    1d90 <test_memmove1+0xf4>
    1cda:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cde:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1ce2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ce6:	48 83 c0 10          	add    $0x10,%rax
    1cea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1cee:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1cf2:	eb 1b                	jmp    1d0f <test_memmove1+0x73>
    1cf4:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1cf8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cfc:	48 01 c2             	add    %rax,%rdx
    1cff:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1d03:	88 02                	mov    %al,(%rdx)
    1d05:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1d09:	83 c0 01             	add    $0x1,%eax
    1d0c:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1d0f:	80 7d e6 1f          	cmpb   $0x1f,-0x1a(%rbp)
    1d13:	76 df                	jbe    1cf4 <test_memmove1+0x58>
    1d15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d19:	be 20 00 00 00       	mov    $0x20,%esi
    1d1e:	48 89 c7             	mov    %rax,%rdi
    1d21:	e8 fd f8 ff ff       	call   1623 <print_array>
    1d26:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1d2a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d2e:	ba 10 00 00 00       	mov    $0x10,%edx
    1d33:	48 89 ce             	mov    %rcx,%rsi
    1d36:	48 89 c7             	mov    %rax,%rdi
    1d39:	e8 80 f5 ff ff       	call   12be <my_memmove>
    1d3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d42:	be 20 00 00 00       	mov    $0x20,%esi
    1d47:	48 89 c7             	mov    %rax,%rdi
    1d4a:	e8 d4 f8 ff ff       	call   1623 <print_array>
    1d4f:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1d53:	eb 25                	jmp    1d7a <test_memmove1+0xde>
    1d55:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1d59:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1d5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d61:	48 01 d0             	add    %rdx,%rax
    1d64:	0f b6 00             	movzbl (%rax),%eax
    1d67:	38 45 e6             	cmp    %al,-0x1a(%rbp)
    1d6a:	74 04                	je     1d70 <test_memmove1+0xd4>
    1d6c:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    1d70:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1d74:	83 c0 01             	add    $0x1,%eax
    1d77:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1d7a:	80 7d e6 0f          	cmpb   $0xf,-0x1a(%rbp)
    1d7e:	76 d5                	jbe    1d55 <test_memmove1+0xb9>
    1d80:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d84:	48 89 c7             	mov    %rax,%rdi
    1d87:	e8 4c f7 ff ff       	call   14d8 <free_words>
    1d8c:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    1d90:	c9                   	leave  
    1d91:	c3                   	ret    

0000000000001d92 <test_memmove2>:
    1d92:	f3 0f 1e fa          	endbr64 
    1d96:	55                   	push   %rbp
    1d97:	48 89 e5             	mov    %rsp,%rbp
    1d9a:	48 83 ec 20          	sub    $0x20,%rsp
    1d9e:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1da2:	48 8d 05 37 13 00 00 	lea    0x1337(%rip),%rax        # 30e0 <_IO_stdin_used+0xe0>
    1da9:	48 89 c7             	mov    %rax,%rdi
    1dac:	e8 ef f2 ff ff       	call   10a0 <puts@plt>
    1db1:	bf 08 00 00 00       	mov    $0x8,%edi
    1db6:	e8 fb f6 ff ff       	call   14b6 <reserve_words>
    1dbb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1dbf:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1dc4:	75 0a                	jne    1dd0 <test_memmove2+0x3e>
    1dc6:	b8 01 00 00 00       	mov    $0x1,%eax
    1dcb:	e9 b6 00 00 00       	jmp    1e86 <test_memmove2+0xf4>
    1dd0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1dd4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1dd8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ddc:	48 83 c0 08          	add    $0x8,%rax
    1de0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1de4:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1de8:	eb 1b                	jmp    1e05 <test_memmove2+0x73>
    1dea:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1dee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1df2:	48 01 c2             	add    %rax,%rdx
    1df5:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1df9:	88 02                	mov    %al,(%rdx)
    1dfb:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1dff:	83 c0 01             	add    $0x1,%eax
    1e02:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1e05:	80 7d e6 1f          	cmpb   $0x1f,-0x1a(%rbp)
    1e09:	76 df                	jbe    1dea <test_memmove2+0x58>
    1e0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e0f:	be 20 00 00 00       	mov    $0x20,%esi
    1e14:	48 89 c7             	mov    %rax,%rdi
    1e17:	e8 07 f8 ff ff       	call   1623 <print_array>
    1e1c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1e20:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1e24:	ba 10 00 00 00       	mov    $0x10,%edx
    1e29:	48 89 ce             	mov    %rcx,%rsi
    1e2c:	48 89 c7             	mov    %rax,%rdi
    1e2f:	e8 8a f4 ff ff       	call   12be <my_memmove>
    1e34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e38:	be 20 00 00 00       	mov    $0x20,%esi
    1e3d:	48 89 c7             	mov    %rax,%rdi
    1e40:	e8 de f7 ff ff       	call   1623 <print_array>
    1e45:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1e49:	eb 25                	jmp    1e70 <test_memmove2+0xde>
    1e4b:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1e4f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1e53:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e57:	48 01 d0             	add    %rdx,%rax
    1e5a:	0f b6 00             	movzbl (%rax),%eax
    1e5d:	38 45 e6             	cmp    %al,-0x1a(%rbp)
    1e60:	74 04                	je     1e66 <test_memmove2+0xd4>
    1e62:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    1e66:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1e6a:	83 c0 01             	add    $0x1,%eax
    1e6d:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1e70:	80 7d e6 0f          	cmpb   $0xf,-0x1a(%rbp)
    1e74:	76 d5                	jbe    1e4b <test_memmove2+0xb9>
    1e76:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e7a:	48 89 c7             	mov    %rax,%rdi
    1e7d:	e8 56 f6 ff ff       	call   14d8 <free_words>
    1e82:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    1e86:	c9                   	leave  
    1e87:	c3                   	ret    

0000000000001e88 <test_memmove3>:
    1e88:	f3 0f 1e fa          	endbr64 
    1e8c:	55                   	push   %rbp
    1e8d:	48 89 e5             	mov    %rsp,%rbp
    1e90:	48 83 ec 20          	sub    $0x20,%rsp
    1e94:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1e98:	48 8d 05 79 12 00 00 	lea    0x1279(%rip),%rax        # 3118 <_IO_stdin_used+0x118>
    1e9f:	48 89 c7             	mov    %rax,%rdi
    1ea2:	e8 f9 f1 ff ff       	call   10a0 <puts@plt>
    1ea7:	bf 08 00 00 00       	mov    $0x8,%edi
    1eac:	e8 05 f6 ff ff       	call   14b6 <reserve_words>
    1eb1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1eb5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1eba:	75 0a                	jne    1ec6 <test_memmove3+0x3e>
    1ebc:	b8 01 00 00 00       	mov    $0x1,%eax
    1ec1:	e9 bb 00 00 00       	jmp    1f81 <test_memmove3+0xf9>
    1ec6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1eca:	48 83 c0 08          	add    $0x8,%rax
    1ece:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1ed2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ed6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1eda:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1ede:	eb 1b                	jmp    1efb <test_memmove3+0x73>
    1ee0:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1ee4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ee8:	48 01 c2             	add    %rax,%rdx
    1eeb:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1eef:	88 02                	mov    %al,(%rdx)
    1ef1:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1ef5:	83 c0 01             	add    $0x1,%eax
    1ef8:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1efb:	80 7d e6 1f          	cmpb   $0x1f,-0x1a(%rbp)
    1eff:	76 df                	jbe    1ee0 <test_memmove3+0x58>
    1f01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f05:	be 20 00 00 00       	mov    $0x20,%esi
    1f0a:	48 89 c7             	mov    %rax,%rdi
    1f0d:	e8 11 f7 ff ff       	call   1623 <print_array>
    1f12:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1f16:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1f1a:	ba 10 00 00 00       	mov    $0x10,%edx
    1f1f:	48 89 ce             	mov    %rcx,%rsi
    1f22:	48 89 c7             	mov    %rax,%rdi
    1f25:	e8 94 f3 ff ff       	call   12be <my_memmove>
    1f2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f2e:	be 20 00 00 00       	mov    $0x20,%esi
    1f33:	48 89 c7             	mov    %rax,%rdi
    1f36:	e8 e8 f6 ff ff       	call   1623 <print_array>
    1f3b:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1f3f:	eb 2a                	jmp    1f6b <test_memmove3+0xe3>
    1f41:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1f45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f49:	48 01 d0             	add    %rdx,%rax
    1f4c:	0f b6 00             	movzbl (%rax),%eax
    1f4f:	0f b6 c0             	movzbl %al,%eax
    1f52:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1f56:	83 c2 08             	add    $0x8,%edx
    1f59:	39 d0                	cmp    %edx,%eax
    1f5b:	74 04                	je     1f61 <test_memmove3+0xd9>
    1f5d:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    1f61:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1f65:	83 c0 01             	add    $0x1,%eax
    1f68:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1f6b:	80 7d e6 0f          	cmpb   $0xf,-0x1a(%rbp)
    1f6f:	76 d0                	jbe    1f41 <test_memmove3+0xb9>
    1f71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f75:	48 89 c7             	mov    %rax,%rdi
    1f78:	e8 5b f5 ff ff       	call   14d8 <free_words>
    1f7d:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    1f81:	c9                   	leave  
    1f82:	c3                   	ret    

0000000000001f83 <test_memcopy>:
    1f83:	f3 0f 1e fa          	endbr64 
    1f87:	55                   	push   %rbp
    1f88:	48 89 e5             	mov    %rsp,%rbp
    1f8b:	48 83 ec 20          	sub    $0x20,%rsp
    1f8f:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1f93:	48 8d 05 b4 11 00 00 	lea    0x11b4(%rip),%rax        # 314e <_IO_stdin_used+0x14e>
    1f9a:	48 89 c7             	mov    %rax,%rdi
    1f9d:	e8 fe f0 ff ff       	call   10a0 <puts@plt>
    1fa2:	bf 08 00 00 00       	mov    $0x8,%edi
    1fa7:	e8 0a f5 ff ff       	call   14b6 <reserve_words>
    1fac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1fb0:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1fb5:	75 0a                	jne    1fc1 <test_memcopy+0x3e>
    1fb7:	b8 01 00 00 00       	mov    $0x1,%eax
    1fbc:	e9 b6 00 00 00       	jmp    2077 <test_memcopy+0xf4>
    1fc1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fc5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1fc9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fcd:	48 83 c0 10          	add    $0x10,%rax
    1fd1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1fd5:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    1fd9:	eb 1b                	jmp    1ff6 <test_memcopy+0x73>
    1fdb:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    1fdf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fe3:	48 01 c2             	add    %rax,%rdx
    1fe6:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1fea:	88 02                	mov    %al,(%rdx)
    1fec:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    1ff0:	83 c0 01             	add    $0x1,%eax
    1ff3:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1ff6:	80 7d e6 1f          	cmpb   $0x1f,-0x1a(%rbp)
    1ffa:	76 df                	jbe    1fdb <test_memcopy+0x58>
    1ffc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2000:	be 20 00 00 00       	mov    $0x20,%esi
    2005:	48 89 c7             	mov    %rax,%rdi
    2008:	e8 16 f6 ff ff       	call   1623 <print_array>
    200d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2011:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2015:	ba 10 00 00 00       	mov    $0x10,%edx
    201a:	48 89 ce             	mov    %rcx,%rsi
    201d:	48 89 c7             	mov    %rax,%rdi
    2020:	e8 38 f3 ff ff       	call   135d <my_memcopy>
    2025:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2029:	be 20 00 00 00       	mov    $0x20,%esi
    202e:	48 89 c7             	mov    %rax,%rdi
    2031:	e8 ed f5 ff ff       	call   1623 <print_array>
    2036:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    203a:	eb 25                	jmp    2061 <test_memcopy+0xde>
    203c:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    2040:	48 8d 50 10          	lea    0x10(%rax),%rdx
    2044:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2048:	48 01 d0             	add    %rdx,%rax
    204b:	0f b6 00             	movzbl (%rax),%eax
    204e:	38 45 e6             	cmp    %al,-0x1a(%rbp)
    2051:	74 04                	je     2057 <test_memcopy+0xd4>
    2053:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    2057:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    205b:	83 c0 01             	add    $0x1,%eax
    205e:	88 45 e6             	mov    %al,-0x1a(%rbp)
    2061:	80 7d e6 0f          	cmpb   $0xf,-0x1a(%rbp)
    2065:	76 d5                	jbe    203c <test_memcopy+0xb9>
    2067:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    206b:	48 89 c7             	mov    %rax,%rdi
    206e:	e8 65 f4 ff ff       	call   14d8 <free_words>
    2073:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    2077:	c9                   	leave  
    2078:	c3                   	ret    

0000000000002079 <test_memset>:
    2079:	f3 0f 1e fa          	endbr64 
    207d:	55                   	push   %rbp
    207e:	48 89 e5             	mov    %rsp,%rbp
    2081:	48 83 ec 20          	sub    $0x20,%rsp
    2085:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    2089:	48 8d 05 cd 10 00 00 	lea    0x10cd(%rip),%rax        # 315d <_IO_stdin_used+0x15d>
    2090:	48 89 c7             	mov    %rax,%rdi
    2093:	e8 08 f0 ff ff       	call   10a0 <puts@plt>
    2098:	bf 08 00 00 00       	mov    $0x8,%edi
    209d:	e8 14 f4 ff ff       	call   14b6 <reserve_words>
    20a2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    20a6:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    20ab:	75 0a                	jne    20b7 <test_memset+0x3e>
    20ad:	b8 01 00 00 00       	mov    $0x1,%eax
    20b2:	e9 ed 00 00 00       	jmp    21a4 <test_memset+0x12b>
    20b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20bb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    20bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20c3:	48 83 c0 10          	add    $0x10,%rax
    20c7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    20cb:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    20cf:	eb 1b                	jmp    20ec <test_memset+0x73>
    20d1:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    20d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20d9:	48 01 c2             	add    %rax,%rdx
    20dc:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    20e0:	88 02                	mov    %al,(%rdx)
    20e2:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    20e6:	83 c0 01             	add    $0x1,%eax
    20e9:	88 45 e6             	mov    %al,-0x1a(%rbp)
    20ec:	80 7d e6 1f          	cmpb   $0x1f,-0x1a(%rbp)
    20f0:	76 df                	jbe    20d1 <test_memset+0x58>
    20f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20f6:	be 20 00 00 00       	mov    $0x20,%esi
    20fb:	48 89 c7             	mov    %rax,%rdi
    20fe:	e8 20 f5 ff ff       	call   1623 <print_array>
    2103:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2107:	ba ff 00 00 00       	mov    $0xff,%edx
    210c:	be 20 00 00 00       	mov    $0x20,%esi
    2111:	48 89 c7             	mov    %rax,%rdi
    2114:	e8 98 f2 ff ff       	call   13b1 <my_memset>
    2119:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    211d:	be 20 00 00 00       	mov    $0x20,%esi
    2122:	48 89 c7             	mov    %rax,%rdi
    2125:	e8 f9 f4 ff ff       	call   1623 <print_array>
    212a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    212e:	be 10 00 00 00       	mov    $0x10,%esi
    2133:	48 89 c7             	mov    %rax,%rdi
    2136:	e8 be f2 ff ff       	call   13f9 <my_memzero>
    213b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    213f:	be 20 00 00 00       	mov    $0x20,%esi
    2144:	48 89 c7             	mov    %rax,%rdi
    2147:	e8 d7 f4 ff ff       	call   1623 <print_array>
    214c:	c6 45 e6 00          	movb   $0x0,-0x1a(%rbp)
    2150:	eb 3c                	jmp    218e <test_memset+0x115>
    2152:	0f b6 55 e6          	movzbl -0x1a(%rbp),%edx
    2156:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    215a:	48 01 d0             	add    %rdx,%rax
    215d:	0f b6 00             	movzbl (%rax),%eax
    2160:	3c ff                	cmp    $0xff,%al
    2162:	74 04                	je     2168 <test_memset+0xef>
    2164:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    2168:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    216c:	83 c0 10             	add    $0x10,%eax
    216f:	48 63 d0             	movslq %eax,%rdx
    2172:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2176:	48 01 d0             	add    %rdx,%rax
    2179:	0f b6 00             	movzbl (%rax),%eax
    217c:	84 c0                	test   %al,%al
    217e:	74 04                	je     2184 <test_memset+0x10b>
    2180:	c6 45 e7 01          	movb   $0x1,-0x19(%rbp)
    2184:	0f b6 45 e6          	movzbl -0x1a(%rbp),%eax
    2188:	83 c0 01             	add    $0x1,%eax
    218b:	88 45 e6             	mov    %al,-0x1a(%rbp)
    218e:	80 7d e6 0f          	cmpb   $0xf,-0x1a(%rbp)
    2192:	76 be                	jbe    2152 <test_memset+0xd9>
    2194:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2198:	48 89 c7             	mov    %rax,%rdi
    219b:	e8 38 f3 ff ff       	call   14d8 <free_words>
    21a0:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    21a4:	c9                   	leave  
    21a5:	c3                   	ret    

00000000000021a6 <test_reverse>:
    21a6:	f3 0f 1e fa          	endbr64 
    21aa:	55                   	push   %rbp
    21ab:	48 89 e5             	mov    %rsp,%rbp
    21ae:	48 83 ec 40          	sub    $0x40,%rsp
    21b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    21b9:	00 00 
    21bb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    21bf:	31 c0                	xor    %eax,%eax
    21c1:	c6 45 c7 00          	movb   $0x0,-0x39(%rbp)
    21c5:	48 b8 3f 73 72 33 54 	movabs $0x267243543372733f,%rax
    21cc:	43 72 26 
    21cf:	48 ba 48 63 20 66 6f 	movabs $0x3320006f66206348,%rdx
    21d6:	00 20 33 
    21d9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    21dd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    21e1:	48 b8 72 75 74 78 21 	movabs $0x40204d2178747572,%rax
    21e8:	4d 20 40 
    21eb:	48 ba 20 24 7c 20 24 	movabs $0x54686924207c2420,%rdx
    21f2:	69 68 54 
    21f5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    21f9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    21fd:	48 8d 05 67 0f 00 00 	lea    0xf67(%rip),%rax        # 316b <_IO_stdin_used+0x16b>
    2204:	48 89 c7             	mov    %rax,%rdi
    2207:	e8 94 ee ff ff       	call   10a0 <puts@plt>
    220c:	bf 08 00 00 00       	mov    $0x8,%edi
    2211:	e8 a0 f2 ff ff       	call   14b6 <reserve_words>
    2216:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    221a:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    221f:	75 0a                	jne    222b <test_reverse+0x85>
    2221:	b8 01 00 00 00       	mov    $0x1,%eax
    2226:	e9 9f 00 00 00       	jmp    22ca <test_reverse+0x124>
    222b:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    222f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2233:	ba 20 00 00 00       	mov    $0x20,%edx
    2238:	48 89 ce             	mov    %rcx,%rsi
    223b:	48 89 c7             	mov    %rax,%rdi
    223e:	e8 1a f1 ff ff       	call   135d <my_memcopy>
    2243:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2247:	be 20 00 00 00       	mov    $0x20,%esi
    224c:	48 89 c7             	mov    %rax,%rdi
    224f:	e8 cf f3 ff ff       	call   1623 <print_array>
    2254:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2258:	be 20 00 00 00       	mov    $0x20,%esi
    225d:	48 89 c7             	mov    %rax,%rdi
    2260:	e8 ca f1 ff ff       	call   142f <my_reverse>
    2265:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2269:	be 20 00 00 00       	mov    $0x20,%esi
    226e:	48 89 c7             	mov    %rax,%rdi
    2271:	e8 ad f3 ff ff       	call   1623 <print_array>
    2276:	c6 45 c6 00          	movb   $0x0,-0x3a(%rbp)
    227a:	eb 38                	jmp    22b4 <test_reverse+0x10e>
    227c:	0f b6 45 c6          	movzbl -0x3a(%rbp),%eax
    2280:	48 98                	cltq   
    2282:	0f b6 54 05 d0       	movzbl -0x30(%rbp,%rax,1),%edx
    2287:	0f b6 4d c6          	movzbl -0x3a(%rbp),%ecx
    228b:	b8 20 00 00 00       	mov    $0x20,%eax
    2290:	29 c8                	sub    %ecx,%eax
    2292:	48 98                	cltq   
    2294:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
    2298:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    229c:	48 01 c8             	add    %rcx,%rax
    229f:	0f b6 00             	movzbl (%rax),%eax
    22a2:	38 c2                	cmp    %al,%dl
    22a4:	74 04                	je     22aa <test_reverse+0x104>
    22a6:	c6 45 c7 01          	movb   $0x1,-0x39(%rbp)
    22aa:	0f b6 45 c6          	movzbl -0x3a(%rbp),%eax
    22ae:	83 c0 01             	add    $0x1,%eax
    22b1:	88 45 c6             	mov    %al,-0x3a(%rbp)
    22b4:	80 7d c6 1f          	cmpb   $0x1f,-0x3a(%rbp)
    22b8:	76 c2                	jbe    227c <test_reverse+0xd6>
    22ba:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    22be:	48 89 c7             	mov    %rax,%rdi
    22c1:	e8 12 f2 ff ff       	call   14d8 <free_words>
    22c6:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
    22ca:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    22ce:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    22d5:	00 00 
    22d7:	74 05                	je     22de <test_reverse+0x138>
    22d9:	e8 d2 ed ff ff       	call   10b0 <__stack_chk_fail@plt>
    22de:	c9                   	leave  
    22df:	c3                   	ret    

00000000000022e0 <course1>:
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	55                   	push   %rbp
    22e5:	48 89 e5             	mov    %rsp,%rbp
    22e8:	48 83 ec 20          	sub    $0x20,%rsp
    22ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22f3:	00 00 
    22f5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    22f9:	31 c0                	xor    %eax,%eax
    22fb:	c6 45 ef 00          	movb   $0x0,-0x11(%rbp)
    22ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2304:	e8 f9 f7 ff ff       	call   1b02 <test_data1>
    2309:	88 45 f0             	mov    %al,-0x10(%rbp)
    230c:	b8 00 00 00 00       	mov    $0x0,%eax
    2311:	e8 b9 f8 ff ff       	call   1bcf <test_data2>
    2316:	88 45 f1             	mov    %al,-0xf(%rbp)
    2319:	b8 00 00 00 00       	mov    $0x0,%eax
    231e:	e8 79 f9 ff ff       	call   1c9c <test_memmove1>
    2323:	88 45 f2             	mov    %al,-0xe(%rbp)
    2326:	b8 00 00 00 00       	mov    $0x0,%eax
    232b:	e8 62 fa ff ff       	call   1d92 <test_memmove2>
    2330:	88 45 f3             	mov    %al,-0xd(%rbp)
    2333:	b8 00 00 00 00       	mov    $0x0,%eax
    2338:	e8 4b fb ff ff       	call   1e88 <test_memmove3>
    233d:	88 45 f4             	mov    %al,-0xc(%rbp)
    2340:	b8 00 00 00 00       	mov    $0x0,%eax
    2345:	e8 39 fc ff ff       	call   1f83 <test_memcopy>
    234a:	88 45 f5             	mov    %al,-0xb(%rbp)
    234d:	b8 00 00 00 00       	mov    $0x0,%eax
    2352:	e8 22 fd ff ff       	call   2079 <test_memset>
    2357:	88 45 f6             	mov    %al,-0xa(%rbp)
    235a:	b8 00 00 00 00       	mov    $0x0,%eax
    235f:	e8 42 fe ff ff       	call   21a6 <test_reverse>
    2364:	88 45 f7             	mov    %al,-0x9(%rbp)
    2367:	c6 45 ee 00          	movb   $0x0,-0x12(%rbp)
    236b:	eb 20                	jmp    238d <course1+0xad>
    236d:	0f b6 45 ee          	movzbl -0x12(%rbp),%eax
    2371:	48 98                	cltq   
    2373:	0f b6 44 05 f0       	movzbl -0x10(%rbp,%rax,1),%eax
    2378:	89 c2                	mov    %eax,%edx
    237a:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    237e:	01 d0                	add    %edx,%eax
    2380:	88 45 ef             	mov    %al,-0x11(%rbp)
    2383:	0f b6 45 ee          	movzbl -0x12(%rbp),%eax
    2387:	83 c0 01             	add    $0x1,%eax
    238a:	88 45 ee             	mov    %al,-0x12(%rbp)
    238d:	80 7d ee 07          	cmpb   $0x7,-0x12(%rbp)
    2391:	76 da                	jbe    236d <course1+0x8d>
    2393:	48 8d 05 e6 0d 00 00 	lea    0xde6(%rip),%rax        # 3180 <_IO_stdin_used+0x180>
    239a:	48 89 c7             	mov    %rax,%rdi
    239d:	e8 fe ec ff ff       	call   10a0 <puts@plt>
    23a2:	48 8d 05 f8 0d 00 00 	lea    0xdf8(%rip),%rax        # 31a1 <_IO_stdin_used+0x1a1>
    23a9:	48 89 c7             	mov    %rax,%rdi
    23ac:	e8 ef ec ff ff       	call   10a0 <puts@plt>
    23b1:	0f be 55 ef          	movsbl -0x11(%rbp),%edx
    23b5:	b8 08 00 00 00       	mov    $0x8,%eax
    23ba:	29 d0                	sub    %edx,%eax
    23bc:	ba 08 00 00 00       	mov    $0x8,%edx
    23c1:	89 c6                	mov    %eax,%esi
    23c3:	48 8d 05 e5 0d 00 00 	lea    0xde5(%rip),%rax        # 31af <_IO_stdin_used+0x1af>
    23ca:	48 89 c7             	mov    %rax,%rdi
    23cd:	b8 00 00 00 00       	mov    $0x0,%eax
    23d2:	e8 e9 ec ff ff       	call   10c0 <printf@plt>
    23d7:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    23db:	ba 08 00 00 00       	mov    $0x8,%edx
    23e0:	89 c6                	mov    %eax,%esi
    23e2:	48 8d 05 d9 0d 00 00 	lea    0xdd9(%rip),%rax        # 31c2 <_IO_stdin_used+0x1c2>
    23e9:	48 89 c7             	mov    %rax,%rdi
    23ec:	b8 00 00 00 00       	mov    $0x0,%eax
    23f1:	e8 ca ec ff ff       	call   10c0 <printf@plt>
    23f6:	48 8d 05 83 0d 00 00 	lea    0xd83(%rip),%rax        # 3180 <_IO_stdin_used+0x180>
    23fd:	48 89 c7             	mov    %rax,%rdi
    2400:	e8 9b ec ff ff       	call   10a0 <puts@plt>
    2405:	90                   	nop
    2406:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    240a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2411:	00 00 
    2413:	74 05                	je     241a <course1+0x13a>
    2415:	e8 96 ec ff ff       	call   10b0 <__stack_chk_fail@plt>
    241a:	c9                   	leave  
    241b:	c3                   	ret    

Disassembly of section .fini:

000000000000241c <_fini>:
    241c:	f3 0f 1e fa          	endbr64 
    2420:	48 83 ec 08          	sub    $0x8,%rsp
    2424:	48 83 c4 08          	add    $0x8,%rsp
    2428:	c3                   	ret    
