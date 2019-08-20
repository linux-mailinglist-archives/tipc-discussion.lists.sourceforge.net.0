Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D7596BA2
	for <lists+tipc-discussion@lfdr.de>; Tue, 20 Aug 2019 23:42:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i0BtD-0006mh-3h; Tue, 20 Aug 2019 21:42:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Andy.Stec@infinite.com>) id 1i0BtB-0006mZ-Vz
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 21:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=536Apwv41twpIu55NAqhkkcvafynY3cwtjOYALSJuEY=; b=bkJw3DIULJlEicRDql6+iJlu1B
 1Yet64HGvfriu7ZOgOOLw0viUhvukrCRO+RgA5+ZWWf0vvaFLqu+q/mXrzoOArN4tNLt5AV1dTPOv
 0Q0qeN6TsMENRxOOnS7MxgB4u4iofnz6RRtLJOoTdTNlK4NJ73LBB5YXoEGR+YvjBD+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=536Apwv41twpIu55NAqhkkcvafynY3cwtjOYALSJuEY=; b=m
 NdQV/EIhvSkbVjvlQ7/lH4bGnTw+JL38Jc3DvnFCrUJV8GvSop2/hyjKou/yQ5rATfWh6ghsR4Ngc
 l2DUU+HnVeiVX1hUJNTekirV77yUEfAGa/wZeGGiiIyiN1c4mn4BHgIOwQo8RiKcUXMZPXcXPs+9B
 C8973dF7ohvbXcsE=;
Received: from mx.infinite.com ([115.114.49.24] helo=emailgw.infinite.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:RC4-SHA:128)
 (Exim 4.90_1) id 1i0Bt9-00ANEw-7H
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 21:42:01 +0000
X-IronPort-AV: E=Sophos;i="5.64,410,1559500200"; d="scan'208,217";a="30436220"
Received: from unknown (HELO icsblrwsm01.infinite.com) ([172.16.11.9])
 by emailgw.infinite.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 02:58:32 +0530
Received: from ICSBLRM01.infics.com (unknown [192.168.0.111])
 by Forcepoint Email with ESMTPS id 21C2A205251CF
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 21 Aug 2019 02:59:36 +0530 (IST)
Received: from ICUSM01.infics.com (10.51.1.23) by ICSBLRM01.infics.com
 (192.168.0.111) with Microsoft SMTP Server (TLS) id 15.0.1365.1; Wed, 21 Aug
 2019 02:58:31 +0530
Received: from ICUSM01.infics.com (10.51.1.23) by ICUSM01.infics.com
 (10.51.1.23) with Microsoft SMTP Server (TLS) id 15.0.1365.1; Tue, 20 Aug
 2019 14:28:27 -0700
Received: from ICUSM01.infics.com ([fe80::2933:de0b:8e32:7dcd]) by
 ICUSM01.infics.com ([fe80::2933:de0b:8e32:7dcd%12]) with mapi id
 15.00.1365.000; Tue, 20 Aug 2019 14:28:27 -0700
From: Andy Stec <Andy.Stec@infinite.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Kernel panic while running tipc-config
Thread-Index: AdVXnk9oU5cIzGKZQnOnwBGPT0u47w==
Date: Tue, 20 Aug 2019 21:28:27 +0000
Message-ID: <121ae49c351e463dbed8e2b9d1730746@ICUSM01.infics.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.114.49.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1i0Bt9-00ANEw-7H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Kernel panic while running tipc-config
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

VMware VM running on RHEL7.6 encountered a kernel panic when executing the below command:

/usr/sbin/tipc-config -ls=1.1.10:eth0-1.1.1:eth0

Has anybody encountered this issue? Any kind of assistance would be appreciated.

Please find below the version details for TIPC and RHEL of the Guest OS along with the stack trace.

====================
TIPC Version Details
====================
TIPC configuration tool - 2.0.6
TIPC Kernel Module      - 2.0.0
TIPC Module vermagic    - 3.10.0-862.14.4.el7.x86_64 SMP mod_unload modversions

======================
VM RHEL Release info
======================
Linux cm.mplab.ics.com 3.10.0-957.el7.x86_64 #1 SMP Thu Oct 4 20:48:51 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

=============
Stack Trace
=============
crash> sy
        CPUS: 8 [OFFLINE: 7]
        DATE: Sun Aug 18 20:15:31 2019
LOAD AVERAGE: 0.02, 0.16, 0.25
    NODENAME: cm.mplab.ics.com
     RELEASE: 3.10.0-957.el7.x86_64
       PANIC: "BUG: unable to handle kernel NULL pointer dereference at 0000000000000068"

crash> bt
PID: 95723  TASK: ffff9fac8f728000  CPU: 4   COMMAND: "tipc-config"
#0 [ffff9fad9af83808] panic at ffffffffa195b5ff
#1 [ffff9fad9af83888] oops_end at ffffffffa196c783
#2 [ffff9fad9af838b0] no_context at ffffffffa195aa7e
#3 [ffff9fad9af83900] __bad_area_nosemaphore at ffffffffa195ab15
#4 [ffff9fad9af83950] bad_area_nosemaphore at ffffffffa195ac86
#5 [ffff9fad9af83960] __do_page_fault at ffffffffa196f6b0
#6 [ffff9fad9af839d0] do_page_fault at ffffffffa196f915
#7 [ffff9fad9af83a00] page_fault at ffffffffa196b758
    [exception RIP: tipc_cfg_do_cmd+0x2b0]
    RIP: ffffffffc04db5f0  RSP: ffff9fad9af83ab8  RFLAGS: 00010292
    RAX: 0000000000000000  RBX: 0000000000000000  RCX: 0000000004e61450
    RDX: 0000000000000000  RSI: ffff9fad97673700  RDI: 0000000000000000
    RBP: ffff9fad9af83af0   R8: 000000000001f120   R9: ffffffffa1824371
    R10: ffff9fad9c71f120  R11: ffffdb4ae05d9c00  R12: 000000000100100a
    R13: ffff9fad87f11c1c  R14: 0000000000000040  R15: 000000000000001c
    ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
#8 [ffff9fad9af83af8] handle_cmd at ffffffffc04e46ae [tipc]
#9 [ffff9fad9af83b20] genl_family_rcv_msg at ffffffffa1877898
#10 [ffff9fad9af83be8] genl_rcv_msg at ffffffffa1877b1b
#11 [ffff9fad9af83c18] netlink_rcv_skb at ffffffffa1875b2b
#12 [ffff9fad9af83c40] genl_rcv at ffffffffa1876068
#13 [ffff9fad9af83c58] netlink_unicast at ffffffffa18754b0
#14 [ffff9fad9af83ca0] netlink_sendmsg at ffffffffa1875858
#15 [ffff9fad9af83d28] sock_aio_write at ffffffffa181857d
#16 [ffff9fad9af83df0] do_sync_write at ffffffffa14405b3
#17 [ffff9fad9af83ec8] vfs_write at ffffffffa14411a5
#18 [ffff9fad9af83f08] sys_write at ffffffffa1441ebf
#19 [ffff9fad9af83f50] system_call_fastpath at ffffffffa1974ddb
    RIP: 00007fd854967fd0  RSP: 00007ffd425410e0  RFLAGS: 00010206
    RAX: 0000000000000001  RBX: 000000000000005c  RCX: 000000000259e080
    RDX: 000000000000005c  RSI: 000000000259e010  RDI: 0000000000000003  <---
    RBP: 000000000259e010   R8: 0000000000000004   R9: 0000000000008104
    R10: 00007ffd4254120c  R11: 0000000000000246  R12: 000000000000005c
    R13: 0000000000000003  R14: 000000000259e010  R15: 0000000000000008
    ORIG_RAX: 0000000000000001  CS: 0033  SS: 002b

crash> pd 0x3
$1 = 3

crash> net -s
PID: 95723  TASK: ffff9fac8f728000  CPU: 4   COMMAND: "tipc-config"
FD      SOCKET            SOCK       FAMILY:TYPE SOURCE-PORT DESTINATION-PORT
3 ffff9fad77000a00 ffff9fad97b37800 NETLINK/ROUTE:DGRAM

crash> socket.state,type ffff9fad77000a00
  state = SS_UNCONNECTED
  type = 0x2

#define AF_INET         2       /* Internet IP Protocol         */

crash> ps -a ffff9fac8f728000
PID: 95723  TASK: ffff9fac8f728000  CPU: 4   COMMAND: "tipc-config"
ARG: /usr/sbin/tipc-config -ls=1.1.10:eth0-1.1.1:eth0
ENV: XDG_SESSION_ID=46274
     MAILTO=
     SHELL=/bin/sh
     USER=mpug
     PATH=/bin:/usr/bin
     PWD=/home/mpug
     LANG=en_US.UTF-8
     HOME=/home/mpug
     SHLVL=2
     LOGNAME=mpug
     XDG_RUNTIME_DIR=/run/user/29702
     _=/usr/sbin/tipc-config

This e-mail contains PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of the addressee(s). If you are not the intended recipient, please notify so to the sender by e-mail and delete the original message. In such cases, please notify us immediately at info@infinite.com <mailto:info@infinite.com> . Further, you are not to copy, disclose, or distribute this e-mail or its contents to any unauthorized person(s). Any such actions are considered unlawful. This e-mail may contain viruses. Infinite has taken every reasonable precaution to minimize this risk, but is not liable for any damage you may sustain as a result of any virus in this e-mail. You should carry out your own virus checks before opening the e-mail or attachments. Infinite reserves the right to monitor and review the content of all messages sent to or from this e-mail address. Messages sent to or from this e-mail address may be stored on the Infinite e-mail system.

 

***INFINITE******** End of Disclaimer********INFINITE********

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
