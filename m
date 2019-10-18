Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7596BDC604
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Oct 2019 15:28:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLSJC-00009c-67; Fri, 18 Oct 2019 13:28:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1iLSJA-00009G-VF
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 13:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=luM8djBV7ognCkuebQEPjSEaO9Pj1BtwZSisfyXLVjE=; b=TeR7kcC8XlxlrHqb0umUZ5jwUv
 D4DbkGutY7Zbhp0QMpWtq9I9tv/DsTyAEznxwzlPhN/NmxhgInvxT+qqyQ2CsaRUc1KaWmNcG/tND
 IMTNiBg/oiiULKQQOkNdRAcZseciPbvDa4llSusE1lh0RIfG9bJF5C6YXgb3z8xMlRIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=luM8djBV7ognCkuebQEPjSEaO9Pj1BtwZSisfyXLVjE=; b=kar70DnQGvibxe4/bz1HQd1KHF
 AgH3Ay4q3CgchyneajUSp5ceqT2VaIdAdGSOg0Uj0RC2iqUDmjv9LI+zFvZ8hopyOgkA0qaACxtoY
 Wt2YCZg2Jr+Pqe7joo94Vjjwvekor5SZyF1KFc3SdZ/H+SLQaIXAKo2vX6zq10WpTHYA=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iLSJ6-00DX6O-Fj
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 13:28:44 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Fri, 18 Oct 2019 08:28:29 -0500
Received: (sendio-qmail 5774 invoked from network); 18 Oct 2019 13:28:29 -0000
X-Sendio-SenderIP: 104.47.48.51
X-Sendio-RemoteSenderIP: 104.47.48.51
X-Sendio-MessageID: 1571405309.5771.1
Received: from unknown (HELO NAM05-CO1-obe.outbound.protection.outlook.com)
 (104.47.48.51)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 18 Oct 2019 13:28:28 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IsHn0s2SkB6N2FzBXe+m6hK3g2YCjbu/nnt2EnmRNWDNdmadY8aZ9xJKdxlXzFJ0FmTOgx0Q+uV2cj+RrflztXnnqS/h+dLtPQnoM4HQJblY/g0/bPdnLX1PCeiEK89bAGhf3JkW8T5Mftz1KpFiMe9iPs7e75gNY/1QZeWT8ZpSLJKpVhUKqT61lN8bF3vCx2lViBOBb4qCrLK1Ezboz8xu9HBw3lBAE1GeHT2KMaZQ4vlw51tkx1UctgZv6z7eXLLWZompSUfuz6m9Pk88iymbG4lzvrtO+EZioENwtr5WBnmpp2wrNSRUoOdk1yrBmDW2CUsp187h2BYALVfKWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luM8djBV7ognCkuebQEPjSEaO9Pj1BtwZSisfyXLVjE=;
 b=DUxIo9bUr3DnEF58xVxWH4bUXYXhD6XNbfG+N4U4/Pj2i5jebiStm3SOjBh2px9DJNaF89ABv28r2c7Vt15o0MNqbIa1c+B/I7b68/0dpnzQV+m755Xud3IaJaSA34DpXkPYR2UK+pxFXZtM+g5qTqrr4zFtXB4CHWVgeKx6gWSUhl1lU7c7+QilMYK2Ncbw4IJI9GCVqyBX1EHaDFFytA1Iuwg+jWCqMO1vM6MMiavyO7RwJorfE8HMSJ1sX/V2tdqpH5Tf7BSKgU+f0MGftMUZJCCuxC2ubQRp52oosprdu/ekusKu4GyyLTJS4hTB9U/GYEUL2aGIuwWaOHOEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luM8djBV7ognCkuebQEPjSEaO9Pj1BtwZSisfyXLVjE=;
 b=PM0teTDUR6Bs+Yh/tp0FXFvdSz9VVVKUVJDo+d1J6rXxOr3Cjbrhvo5YpOV81D2Hi/n7g68GIGZuwS/pPPvzjmIvJJghFMDkBigLbHU1soLDdcHGwtK7Grezt1pgX/vLfjSASYzqSjwDbINEHW0MTTAemnR9M92ZHoV2hzLKyKY=
Received: from CH2PR13MB3624.namprd13.prod.outlook.com (20.180.12.143) by
 CH2PR13MB3320.namprd13.prod.outlook.com (52.132.244.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.17; Fri, 18 Oct 2019 13:28:27 +0000
Received: from CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269]) by CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269%3]) with mapi id 15.20.2387.014; Fri, 18 Oct 2019
 13:28:27 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Partha <parthasarathy.bhuvaragan@gmail.com>, Jon Maloy
 <jon.maloy@ericsson.com>, "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] Error allocating memeory error when sending
 RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+gAIEBdAAACQNZAAAKIvoAAkASAAAABFZhA=
Date: Fri, 18 Oct 2019 13:28:26 +0000
Message-ID: <CH2PR13MB3624446F472B95360D6F0515C46C0@CH2PR13MB3624.namprd13.prod.outlook.com>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR13MB362444F4E92A630106E05541C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <c0467e6c-af52-296c-8401-7d8ccf749149@gmail.com>
In-Reply-To: <c0467e6c-af52-296c-8401-7d8ccf749149@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=runet@innovsys.com; 
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cdf82f2e-d72b-4ccd-cc40-08d753cf0f04
x-ms-traffictypediagnostic: CH2PR13MB3320:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR13MB33206378CE8D71991C51387BC46C0@CH2PR13MB3320.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39840400004)(376002)(396003)(136003)(366004)(346002)(199004)(189003)(13464003)(486006)(186003)(102836004)(26005)(6246003)(7696005)(76176011)(6506007)(6116002)(5660300002)(53546011)(55236004)(71200400001)(476003)(305945005)(66066001)(25786009)(7736002)(9686003)(478600001)(446003)(11346002)(52536014)(33656002)(2906002)(74316002)(6436002)(99286004)(229853002)(71190400001)(15650500001)(110136005)(66446008)(66556008)(8936002)(66946007)(66476007)(8676002)(4001150100001)(86362001)(3846002)(6306002)(76116006)(966005)(55016002)(256004)(14444005)(14454004)(316002)(81156014)(81166006)(64756008)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR13MB3320;
 H:CH2PR13MB3624.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: innovsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rpgvRAPPLPJ0tYf/fRNYLj23uT5LAZSb/ZIF5vmZDXEqOJfSc8NAPs6TjTa8X6GNMQ8b6/+/1PS+ksq06RLt2mDl06rzyOBP5DHMJXAYVv1lPoI0hImIhsC5K2ac0F3mK19TBZJA3O+ZQLBg5W8acXqmK07B+LyLsqx7KAb/FIeKEEABXbTyZk5aP2QGWlzGctrsme7UvvhY6pItatQgRqvXI4POVcUc6Mqgm/xmozfHEFFjLbMJ0/zpjZK7fll8uGSxhB16rNuiHVsrVTvogx69W49BdzirwrT0OKXpFIaOWPDiBb4YcYcQOkM6EhcSgAA3kCvcf8s1RrWLVGao75yXdPvD42pVYZiZg8GRNuKVCk/+6lU5oDCC1xOUgqWUZjp84zjMC5FOZGtlzUmENSjKRvRD2MhndVZiD5LWDOo22bEbr7DL+L/U93SfCFJErFD4Q2/jQMNy+RcKJLv3aA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf82f2e-d72b-4ccd-cc40-08d753cf0f04
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 13:28:26.9262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gOovLg03mbnjgLro2uvJsarVAf39zOG2Zkvf2Al2Y/GEDTC6bXNnghPN3q1uheDmLTet9kfvEv900yhajiwYS95doCgzlKH8XA2tS0hlUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3320
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
X-Headers-End: 1iLSJ6-00DX6O-Fj
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

cat /proc/buddyinfo
Node 0, zone      DMA      2      2      1      1      3      0      1      0      1      1      3 
Node 0, zone    DMA32   9275  11572    137      6      0      0      0      0      0      0      0 
Node 0, zone   Normal  35213  15049    476     11      1      0      1      1      1      0      0 
Node 1, zone   Normal   5917  25209    490      8      6      3      1      1      0      0      0

And I'm aware of the checkin, as I reported it.
I was under the impression that that was backported to the tipc drive in the Ubuntu 16.04 LTS 4.4.0 branch (around 4.4.0-110 I think).

Either the fix was never incorporated in the 4.4.0 branch, or was reverted recently.

-----Original Message-----
From: Partha <parthasarathy.bhuvaragan@gmail.com> 
Sent: Friday, October 18, 2019 08:17

Hi Rune,

Your systems memory seems to be fragmented, and you need to perform
forced reclaim. Can you check the buddy for higher order allocations?
  cat /proc/buddyinfo

BTW, I fixed this in:
57d5f64d83ab tipc: allocate user memory with GFP_KERNEL flag

And it was Reported-by: Rune Torgersen <runet@innovsys.com>

Its in upstream v4.10-rc3-167-g57d5f64d83ab

regards
Partha

On 2019-10-17 22:08, Rune Torgersen wrote:
> Looks like I can kind of make it happen on one system mow.
> Stopping some programs (not pattern in which ones) makes it work, and starting some back up again makes it fail.
>
> Tipc nametable has 231 entries when failing and 183 entries when succeeding (however on a different system the nametable has 251 entries and it is not failing).
>
> How do I look for memory used by TIPC in the kernel?
>
> -----Original Message-----
> From: Rune Torgersen <runet@innovsys.com>
> Sent: Thursday, October 17, 2019 14:53
>
>
> I will have to look for leaks next time I can make it happen.
> I was trying stuff and shut down a different program that was unrelated (but had some TIPC sockets open on a different address (104)), and as soon as I did, the sends started working again.
>
> It is possible that one of those unrelated sockets has something stuck (as one of them was only ever used to send RDM messages but nothing ever reads it).
>
> Any suggestions as to what to start looking at (netstat, tipc, tipc_config or kernel params) to try to track it down?.
>
> Problem with testing a patch (or using Unbuntu 18 LTS) is that we cannot reliably make it happen.
>
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Thursday, October 17, 2019 14:35
>
>
> Hi Rune,
>
> Do you see any signs of general memory leak ("free") on your node?
>
> Anyway there can be no doubt that this happens because the big buffer pool is running empty.
>
> We fixed that in commit 4c94cc2d3d57 ("tipc: fall back to smaller MTU if allocation of local send skb fails") which was delivered to Linux 4.16.
>
> Do you have any opportunity to apply that patch and try it?
>
> BR
> ///jon
>
>> -----Original Message-----
>> From: Rune Torgersen <runet@innovsys.com>
>> Sent: 17-Oct-19 12:38
>> To: 'tipc-discussion@lists.sourceforge.net' <tipc-
>> discussion@lists.sourceforge.net>
>> Subject: [tipc-discussion] Error allocating memeory error when sending RDM
>> message
>>
>> Hi.
>>
>> I am running into an issue when sending SOCK_RDM or SOCK_DGRAM
>> messages. On a system that has been up for a time (120+ days inthis case), I
>> cannot send any RDM/DGRAM type TIPC messages that are larger than about
>> 16000 bytes (16033+ fails, 15100 and smaller still works).
>> Any larger messages fails with erro code 12 :"Cannot allocate memory".
>>
>> Really odd thing about it  only happens on some connections and not others,
>> on the same system (example, sending to tipc node 103:1003 gets no error,
>> while sending to 103:3 get error).
>> When it gets into this state, it seems to happen forever on the same
>> destination address, and not on others until system is rebooted. (restarting the
>> server side application makes no difference).
>> The sends are done on the same node as the receiver is on.
>>
>> Kernel is Ubuntu 16.04 LTS 4.4.0-150 in this case, also seen on 161.
>>
>> Nametable for 103:
>> 103        2          2          <1.1.1:2328193343>         2328193344  cluster
>> 103        3          3          <1.1.2:3153441800>         3153441801  cluster
>> 103        5          5          <1.1.4:269294867>          269294868   cluster
>> 103        1002       1002       <1.1.1:490133365>          490133366   cluster
>> 103        1003       1003       <1.1.2:2552019732>         2552019733  cluster
>> 103        1005       1005       <1.1.4:625110186>          625110187   cluster
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
