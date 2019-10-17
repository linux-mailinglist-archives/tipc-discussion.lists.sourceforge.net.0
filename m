Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4849BDB820
	for <lists+tipc-discussion@lfdr.de>; Thu, 17 Oct 2019 22:09:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLC5B-0006qO-KK; Thu, 17 Oct 2019 20:09:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1iLC5A-0006px-9H
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 20:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a2o3aTfvB1596xRV8thihINGna5gDjjLQGTCjVTTGG0=; b=dqzw2YbyhAgD/S5o6pKYXWMG2K
 9Pao26651953E/NFgvK+QitA5oZGvo7lMbQVHBxwoiyuKbHbNcMX+0SejypmxvQ7grCIhXdU+BUwu
 zfuKepQzHSO32Wk5g3P/G9nfUF59RmQfhCzK2L29rMC/dGGFWhVESTJSBBPuc2ozUytQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a2o3aTfvB1596xRV8thihINGna5gDjjLQGTCjVTTGG0=; b=mLn1sBDP67U+uSkfaszu4Vir8A
 rB5pXi82gTM6f/QN37E0Wf7u3DmD7SL+R/9UPGEu338KMBNobcXtd364KGlwhHt9ai1kxAPSeypNZ
 +KXCKgTp4+EVeDXf1XEaulLFO37GnmuuceMBr7xQfwQxgGs2uBvW/H/02gbCv64+qbMo=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iLC53-00Clwr-1W
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 20:09:12 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Thu, 17 Oct 2019 15:08:55 -0500
Received: (sendio-qmail 1037 invoked from network); 17 Oct 2019 20:08:55 -0000
X-Sendio-SenderIP: 104.47.50.58
X-Sendio-RemoteSenderIP: 104.47.50.58
X-Sendio-MessageID: 1571342935.1034.1
Received: from unknown (HELO NAM05-BY2-obe.outbound.protection.outlook.com)
 (104.47.50.58)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 17 Oct 2019 20:08:55 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+U+L0CpIRS3dghtSMGagK9sqD93+ZlR5nmU5TWN6HqMjG6+CMl1dWUG16wJjkIGWuJzZweuucRmXm6k8g1+tSveZ4yIkCRbK18AWjJeDRpn7IMqyHk4PARXHTLQrqZ+R/hUgAF/hIYdk/WGCQGkMJ37ymO6pIWSyePmW8I+VRKLNh7Od/I0hqf9oUmn48DUybx1fJqiPtah9Zmrm4dEAvv6IwO+4pdxR07k1q7LYE5XtyS7ilkF3E9bAS+ZMPESfIWjsAUOWfFnSz8Kua5yh7vc9nKLd2C49dNXMC3Vy3qyArxrrEByr6OJboOycZqsN6P1Xepjb9c72dAU+7d5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2o3aTfvB1596xRV8thihINGna5gDjjLQGTCjVTTGG0=;
 b=V5ZHR202cVZPLNwnBIkxPTW30EDPOKys1Acr4+H3Rbo1h0pe6Qy8WD0O2rEKf1Wdw9+DxtlJ/Vh+2EOvbJuuvywxGIJar4ZfAhVs86tTodcLLhRPW1EoK9LcDW15/w0m+4nUGXfUSs5hFYK+T9fzA3FJ10/88N4wvn+7vi1VK54YBOd0TOINIFjyzELJEDHhbtjgDTfoGxte1Vkdy1nyjLft6AgZlXLkAeY+1nyaWs7I3PyzcGnVVMPaxdXW8RiyNevVKTDbf/EeuLTcAiSmN9t3z1HfMyFPAEk3mXFz0oB/EskwyoYldgUkQ0UX70dlHJuJKMyYE0cAY0yuvWf7Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2o3aTfvB1596xRV8thihINGna5gDjjLQGTCjVTTGG0=;
 b=owfLVmhQugwGq/ZmOvEX33Bl1yXewd6TZ35VhSc9Vc91GqH98yXBE5qip94LiHExKFlyHgsJ4WMWwOwuK7nzHUq36YOQ2BGRzXAhQoEwHnZvYhpErqAPpy6rFr0TxiWsYJ33tIP9sxG9CvZeqECY1nfFfPoMv8xltmZdvoRcct8=
Received: from CH2PR13MB3624.namprd13.prod.outlook.com (20.180.12.143) by
 CH2PR13MB3752.namprd13.prod.outlook.com (20.180.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.14; Thu, 17 Oct 2019 20:08:52 +0000
Received: from CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269]) by CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269%3]) with mapi id 15.20.2367.016; Thu, 17 Oct 2019
 20:08:52 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Rune Torgersen <runet@innovsys.com>, Jon Maloy <jon.maloy@ericsson.com>,
 "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Error allocating memeory error when sending RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+gAIEBdAAACQNZAAAKIvoA==
Date: Thu, 17 Oct 2019 20:08:52 +0000
Message-ID: <CH2PR13MB362444F4E92A630106E05541C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
In-Reply-To: <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=runet@innovsys.com; 
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37b1af65-2810-43b8-be1a-08d7533dd4fe
x-ms-traffictypediagnostic: CH2PR13MB3752:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3752EDA0975C954F6E8B407CC46D0@CH2PR13MB3752.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(376002)(366004)(136003)(39850400004)(13464003)(189003)(199004)(478600001)(8936002)(2940100002)(15650500001)(71200400001)(316002)(81166006)(8676002)(229853002)(81156014)(6116002)(66946007)(71190400001)(66556008)(86362001)(66476007)(76116006)(3846002)(66446008)(966005)(110136005)(64756008)(25786009)(66066001)(2906002)(33656002)(6506007)(53546011)(55236004)(186003)(55016002)(14454004)(74316002)(26005)(6306002)(9686003)(6246003)(7696005)(305945005)(7736002)(76176011)(99286004)(5660300002)(256004)(486006)(476003)(446003)(6436002)(11346002)(52536014)(102836004)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR13MB3752;
 H:CH2PR13MB3624.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: innovsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oyllppN53TVQg5ufL4Z5p300Cy7IjxlaBZZf4EhfSKJKNZDlgQrdvAMPycOKlQgqMH8HSwi+C1hbS+2fNhcQKLxUbPVcj9E730LZiOyXjrgBB/RcMusVNWqieBTOAU31v8Kdfrl1r5DDrKFg0CYm75obT+FlZHOe7RWBn8UVohShafnrTPAFThIKN+Ep/BgjnVlLjoy1iao8pX0pzdD97skEJnyQvMpWLeg/1eJVKBTXIcFbHJDqd0wi6KZl/9Pe4rOA9M+K3MzjsUwhseJjV5JS3beFEdUF78WBkQ7dyRvkIjTONINKc0alp6ee9FNcuKqv3wxOVKcxT+RTUBYVn3tj1qBQiYkghfWeo0cvbWU8Sg7UjssdTfh8gre5uWwfOfqsZSYQ6hvQ9T3sOtTRXOnGv/+2Lys3kDXPVw+BXrrytFLdQYE5OHnX5kmnFN4LJbEv4lfAO4DBgXKzX03VqQ==
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37b1af65-2810-43b8-be1a-08d7533dd4fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 20:08:52.6087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 46A2DtduwpbWkJOm76GWnHBljP/ILBNXLQp4e/tZBge5Q/Z26qEjCy5J3YOKJpcJp9l2dpyj0+9ET0RhIkRsdjjDtuF4UF3pIMDOHcboM7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3752
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [96.2.206.15 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iLC53-00Clwr-1W
Subject: Re: [tipc-discussion] Error allocating memeory error when sending
 RDM message
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

Looks like I can kind of make it happen on one system mow.
Stopping some programs (not pattern in which ones) makes it work, and starting some back up again makes it fail.

Tipc nametable has 231 entries when failing and 183 entries when succeeding (however on a different system the nametable has 251 entries and it is not failing).

How do I look for memory used by TIPC in the kernel?

-----Original Message-----
From: Rune Torgersen <runet@innovsys.com> 
Sent: Thursday, October 17, 2019 14:53


I will have to look for leaks next time I can make it happen.
I was trying stuff and shut down a different program that was unrelated (but had some TIPC sockets open on a different address (104)), and as soon as I did, the sends started working again.

It is possible that one of those unrelated sockets has something stuck (as one of them was only ever used to send RDM messages but nothing ever reads it).

Any suggestions as to what to start looking at (netstat, tipc, tipc_config or kernel params) to try to track it down?.

Problem with testing a patch (or using Unbuntu 18 LTS) is that we cannot reliably make it happen.

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com>
Sent: Thursday, October 17, 2019 14:35


Hi Rune,

Do you see any signs of general memory leak ("free") on your node?

Anyway there can be no doubt that this happens because the big buffer pool is running empty.

We fixed that in commit 4c94cc2d3d57 ("tipc: fall back to smaller MTU if allocation of local send skb fails") which was delivered to Linux 4.16.

Do you have any opportunity to apply that patch and try it?

BR
///jon

> -----Original Message-----
> From: Rune Torgersen <runet@innovsys.com>
> Sent: 17-Oct-19 12:38
> To: 'tipc-discussion@lists.sourceforge.net' <tipc-
> discussion@lists.sourceforge.net>
> Subject: [tipc-discussion] Error allocating memeory error when sending RDM
> message
>
> Hi.
>
> I am running into an issue when sending SOCK_RDM or SOCK_DGRAM
> messages. On a system that has been up for a time (120+ days inthis case), I
> cannot send any RDM/DGRAM type TIPC messages that are larger than about
> 16000 bytes (16033+ fails, 15100 and smaller still works).
> Any larger messages fails with erro code 12 :"Cannot allocate memory".
>
> Really odd thing about it  only happens on some connections and not others,
> on the same system (example, sending to tipc node 103:1003 gets no error,
> while sending to 103:3 get error).
> When it gets into this state, it seems to happen forever on the same
> destination address, and not on others until system is rebooted. (restarting the
> server side application makes no difference).
> The sends are done on the same node as the receiver is on.
>
> Kernel is Ubuntu 16.04 LTS 4.4.0-150 in this case, also seen on 161.
>
> Nametable for 103:
> 103        2          2          <1.1.1:2328193343>         2328193344  cluster
> 103        3          3          <1.1.2:3153441800>         3153441801  cluster
> 103        5          5          <1.1.4:269294867>          269294868   cluster
> 103        1002       1002       <1.1.1:490133365>          490133366   cluster
> 103        1003       1003       <1.1.2:2552019732>         2552019733  cluster
> 103        1005       1005       <1.1.4:625110186>          625110187   cluster
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
