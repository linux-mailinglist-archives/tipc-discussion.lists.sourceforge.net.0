Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2121ACF9E
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Apr 2020 20:27:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jP9EA-00044e-Tq; Thu, 16 Apr 2020 18:27:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Andy.Stec@infinite.com>) id 1jP9E9-00044T-Dn
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Apr 2020 18:27:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NNFfgJgYW2A7F89Nu5b9ZobdxLKR7Bhek7PCxHDn5Fo=; b=MrOcqbHLqlgaigpfVpv6X6BVW2
 NXhk8I3GF6LUvyYMo2hny1AVIvtIBP9RGJna3P42RrW6+JqeM6a/XBdNyzvDBBPmkNZBfzX2YOqDC
 JxzPIks4UvZWjXLEx+kSf5VIDFXgqk9WF/k06eQJdPizQ32RFMLt4GvXvgzOz082hukY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NNFfgJgYW2A7F89Nu5b9ZobdxLKR7Bhek7PCxHDn5Fo=; b=b
 8yOVB2tS1fMIqlY89yiDyrN6k/CrykWppYY5Rd62UNTOOroQGWwW+SCg59t8JoUynDQDkgJq0v/iu
 WEvhsnBw/04+Bx2PToeWFdJmWra5PA7ttK7Rli8KXYSJrReSR55rkt+biPX2xmu0bnQ9j1KqeJgtx
 BnfWIB6kf090vXHc=;
Received: from mx5.infinite.com ([115.114.49.32] helo=emailgw.infinite.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jP9E6-0048eL-8f
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Apr 2020 18:27:05 +0000
IronPort-SDR: 67HzgYQ1FHETAwzfKcAsUwfmuD2pgeof2GDYwsl1YErfpx7qilOp4WPAu8K1o7eQ5bOqCn3Iwp
 W9HPjecnpskG7AsnbPO6hbqzTJmIF2UGtadM6NSsDEmeEqLBd72d6iWwisMHjJiWhZvqHGVr6I
 ZXoGfaMZozisnNwVfDKajOQ9QJ3t0JoY0Tv6d48+8X0DU1sCazGV0GUVnwZiP8uVzx9zE7lJJF
 dJdMazmTzFgQvzP9zHf79dU4VSzImzOJaF+fEFBoSGuEX9iQ1a6DXp/5JwAxAiKiE0YivYet6E
 qAM=
X-IronPort-AV: E=Sophos;i="5.72,391,1580754600"; d="scan'208,217";a="3140843"
Received: from unknown (HELO ICSBLRM02.infics.com) ([192.168.0.112])
 by emailgw.infinite.com with ESMTP/TLS/ECDHE-RSA-AES128-SHA256;
 16 Apr 2020 23:40:12 +0530
Received: from ICUSM01.infics.com (10.51.1.23) by ICSBLRM02.infics.com
 (192.168.0.112) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 16 Apr
 2020 23:40:10 +0530
Received: from ICUSM01.infics.com (10.51.1.23) by ICUSM01.infics.com
 (10.51.1.23) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 16 Apr
 2020 13:10:08 -0500
Received: from ICUSM01.infics.com ([fe80::2933:de0b:8e32:7dcd]) by
 ICUSM01.infics.com ([fe80::2933:de0b:8e32:7dcd%12]) with mapi id
 15.00.1497.000; Thu, 16 Apr 2020 13:10:08 -0500
From: Andy Stec <Andy.Stec@infinite.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: No reply detected from Netlink
Thread-Index: AQHWFBoxP4YOv6m9RUyxCC3CbWWj0Q==
Date: Thu, 16 Apr 2020 18:10:08 +0000
Message-ID: <1587060672642.1104@infinite.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.0.156]
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infinite.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1jP9E6-0048eL-8f
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] No reply detected from Netlink
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

After upgrading from Redhat 7.7 to 7.8 (kernel 3.10.0-1127.el7.x86_64) we're getting "no reply detected from Netlink" when issuing any tipc-config command.  Here's the stack trace:


5819  execve("/usr/sbin/tipc-config", ["/usr/sbin/tipc-config", "-netid=56", "-a=1.1.10", "-be=eth:eth0"], 0x7ffe9d102928 /* 18 vars */) = 0
5819  brk(NULL)                         = 0xd39000
5819  mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f211c3de000
5819  access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
5819  open("/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
5819  fstat(3, {st_mode=S_IFREG|0644, st_size=58850, ...}) = 0
5819  mmap(NULL, 58850, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f211c3cf000
5819  close(3)                          = 0
5819  open("/lib64/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
5819  read(3, "\x7f\x45\x4c\x46\x02\x01\x01\x03\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x3e\x00\x01\x00\x00\x00\x60\x26\x02\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x10\xd4\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x38\x00\x0a\x00\x40\x00\x4b\x00\x4a\x00\x06\x00\x00\x00\x05\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x30\x02\x00\x00"..., 832) = 832
5819  fstat(3, {st_mode=S_IFREG|0755, st_size=2156240, ...}) = 0
5819  mmap(NULL, 3985920, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f211bdf0000
5819  mprotect(0x7f211bfb3000, 2097152, PROT_NONE) = 0
5819  mmap(0x7f211c1b3000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1c3000) = 0x7f211c1b3000
5819  mmap(0x7f211c1b9000, 16896, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f211c1b9000
5819  close(3)                          = 0
5819  mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f211c3ce000
5819  mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f211c3cc000
5819  arch_prctl(ARCH_SET_FS, 0x7f211c3cc740) = 0
5819  mprotect(0x7f211c1b3000, 16384, PROT_READ) = 0
5819  mprotect(0x605000, 4096, PROT_READ) = 0
5819  mprotect(0x7f211c3df000, 4096, PROT_READ) = 0
5819  munmap(0x7f211c3cf000, 58850)     = 0
5819  socket(AF_TIPC, SOCK_RDM, 0)      = 3
5819  getsockname(3, {sa_family=AF_TIPC, sa_data="\x03\x00\x03\x00\x40\x9b\x00\x00\x00\x00\x00\x00\x00\x00"}, [16]) = 0
5819  close(3)                          = 0
5819  socket(AF_TIPC, SOCK_RDM, 0)      = 3
5819  getsockname(3, {sa_family=AF_TIPC, sa_data="\x03\x00\x03\x00\x48\x9b\x00\x00\x00\x00\x00\x00\x00\x00"}, [16]) = 0
5819  close(3)                          = 0
5819  brk(NULL)                         = 0xd39000
5819  brk(0xd5a000)                     = 0xd5a000
5819  brk(NULL)                         = 0xd5a000
5819  getpid()                          = 5819
5819  socket(AF_NETLINK, SOCK_DGRAM, NETLINK_GENERIC) = 3
5819  bind(3, {sa_family=AF_NETLINK, nl_pid=0, nl_groups=00000000}, 12) = 0
5819  setsockopt(3, SOL_SOCKET, SO_SNDBUF, [32768], 4) = 0
5819  setsockopt(3, SOL_SOCKET, SO_RCVBUF, [32768], 4) = 0
5819  write(3, "\x20\x00\x00\x00\x10\x00\x01\x00\x00\x00\x00\x00\xbb\x16\x00\x00\x03\x00\x00\x00\x09\x00\x02\x00\x54\x49\x50\x43\x00\x00\x00\x00", 32) = 32
5819  poll([{fd=3, events=POLLIN|POLLPRI|POLLRDNORM|POLLWRNORM|POLLRDBAND|POLLWRBAND|POLLERR|POLLHUP|POLLNVAL|POLLMSG|POLLREMOVE|POLLRDHUP|POLL_BUSY_LOOP|0x4800}], 1, 3000) = 1 ([{fd=3, revents=POLLIN|POLLRDNORM|POLLWRNORM|POLLWRBAND}])
5819  recvfrom(3, {{len=88, type=nlctrl, flags=0, seq=0, pid=5819}, "\x01\x02\x00\x00\x09\x00\x02\x00\x54\x49\x50\x43\x00\x00\x00\x00\x06\x00\x01\x00\x1b\x00\x00\x00\x08\x00\x03\x00\x01\x00\x00\x00\x08\x00\x04\x00\x08\x00\x00\x00\x08\x00\x05\x00\x00\x00\x00\x00\x18\x00\x06\x00\x14\x00\x01\x00\x08\x00\x01\x00\x01\x00\x00\x00\x08\x00\x02\x00\x02\x00\x00\x00"}, 276, 0, NULL, NULL) = 88
5819  close(3)                          = 0
5819  socket(AF_NETLINK, SOCK_DGRAM, NETLINK_GENERIC) = 3
5819  bind(3, {sa_family=AF_NETLINK, nl_pid=0, nl_groups=00000000}, 12) = 0
5819  setsockopt(3, SOL_SOCKET, SO_SNDBUF, [32768], 4) = 0
5819  setsockopt(3, SOL_SOCKET, SO_RCVBUF, [32768], 4) = 0
5819  write(3, "\x24\x00\x00\x00\x1b\x00\x01\x00\x00\x00\x00\x00\xbb\x16\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x0b\x80\x00\x00\x00\x08\x00\x02\x00\x00\x00\x38", 36) = 36
5819  poll([{fd=3, events=POLLIN|POLLPRI|POLLRDNORM|POLLWRNORM|POLLRDBAND|POLLWRBAND|POLLERR|POLLHUP|POLLNVAL|POLLMSG|POLLREMOVE|POLLRDHUP|POLL_BUSY_LOOP|0x4800}], 1, 3000) = 1 ([{fd=3, revents=POLLWRNORM|POLLWRBAND}])
5819  fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(136, 0), ...}) = 0
5819  mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f211c3dd000
5819  write(1, "no reply detected from Netlink\n", 31) = 31
5819  exit_group(1)                     = ?
5819  +++ exited with 1 +++

This e-mail contains PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of the addressee(s). If you are not the intended recipient, please notify so to the sender by e-mail and delete the original message. In such cases, please notify us immediately at info@infinite.com . Further, you are not to copy, disclose, or distribute this e-mail or its contents to any unauthorized person(s). Any such actions are considered unlawful. This e-mail may contain viruses. Infinite has taken every reasonable precaution to minimize this risk, but is not liable for any damage you may sustain as a result of any virus in this e-mail. You should carry out your own virus checks before opening the e-mail or attachments. Infinite reserves the right to monitor and review the content of all messages sent to or from this e-mail address. Messages sent to or from this e-mail address may be stored on the Infinite e-mail system. 

 

***INFINITE******** End of Disclaimer********INFINITE********

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
