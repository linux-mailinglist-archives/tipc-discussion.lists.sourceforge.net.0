Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10ADC750
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Oct 2019 16:28:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLTES-0001ok-8s; Fri, 18 Oct 2019 14:27:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1iLTER-0001ob-E4
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 14:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FXDkJbGyUgUV/txhlVRm3hvMNxR1/OLPbprlo8Kivt0=; b=aAAUvcPc52RldMin9vp3PxD6gi
 j8bHc31XEHRN+jPEdBM5n6xDnsQQP4HOOm7udV7ptFTOn7RglRIt1/UnCvnrE6d/FpkdhtwkVm9/h
 xwkYvt8rqbGDFqZyd92lbjz1fyEAWEUEvg39XyJRfNvxVzvGTpJP13hTvRAH+yGlyLmc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FXDkJbGyUgUV/txhlVRm3hvMNxR1/OLPbprlo8Kivt0=; b=kmdlsvEqmlx0N5S73yDRAoZNqM
 npq9MxhZ/4K8opVqcC0QKQGNkiNj8i5xsybENaNua+q8KKH+nGsmsQ6kweDHnUgzNStWeBBy8HEEH
 SwYoVub78lfeqw1pvA41Dm5yT7fmngTUeKRXS006CXOvCUOvRJ585eBMP7tkRNpKdS4Y=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iLTEP-00DZuw-9N
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 14:27:55 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Fri, 18 Oct 2019 09:27:47 -0500
Received: (sendio-qmail 23683 invoked from network); 18 Oct 2019 14:27:46 -0000
X-Sendio-SenderIP: 104.47.38.59
X-Sendio-RemoteSenderIP: 104.47.38.59
X-Sendio-MessageID: 1571408866.23680.1
Received: from unknown (HELO NAM02-BL2-obe.outbound.protection.outlook.com)
 (104.47.38.59)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 18 Oct 2019 14:27:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QliIgZ+0nLkQ+S8M+275fYpKV3fJi0Bh+zgZ7d7PGziGA7fpkUvl21lh+0afW6GjvuSED658H08NkfhUkQou0UdZltARAuxshAh5u+ZWTaLZXQGHk12PqB5DLiCJJFZD6tVSVovKgHel4Q2EyX/uKpucRqKtKyr2ZJ2gUv0Rr/3FFmXkgGo+9djBhAWNXqouxu29TcCnLcXTaXzrpeA+pgRWfGEdhPuJrDmnJFDP6cGuD6cxRd069HOQ3CHxDW/pCFkgB3KpfkaXRoUKXXc2QyepcYXPQCW3Rb9huZ2Mhqz187qjSSeBBm6U6isyLnKERzLbZI56FUNCLPZpA5nKoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXDkJbGyUgUV/txhlVRm3hvMNxR1/OLPbprlo8Kivt0=;
 b=aCh4jI+aVWgYEqXaOm50Rkrs16E6ax0/8Ni7chVhsLL5OJqb4Wug4KgCIV9X73FpXMi79sZDj2jv2pKK9GPesW4Xb/lQAC86RKiBYmBP0PJtPESfOJl0Cc+TVkIAJQhf+hWWwLhpyuNXv2HT9z/7ShdA9UwJ2vCo7AG8h1rYlsDarAgwCY/vcs7YYQYX+zgrBoPmrPgiACUnMDzFY2ghBtScCBQ7ogO1uenjmqK9oQHatN2Xu48uYWNpa/prHPFjTjBfSPtKFgp/VLHa+WkuCQdzOXJMiDobmJnp/zaWCajVC0mSVOu7qTySs2n32OIshySYgO5UYIbLlZDi/IX2Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXDkJbGyUgUV/txhlVRm3hvMNxR1/OLPbprlo8Kivt0=;
 b=VA0ZDE6Lq27l/409wHB5tLx7C+j+ZAveu/q0+ttzfOQa4GSfLvEz4yq5jCiEoyh+SlsTN1Gag9UgEcu/LYYSw3ptySivJAbFflZ4d5MjWFulUwt+46XnDwXEtpz7FKuS+FeONG6w+Zg+K+YHJRMyMsfjoCK0i5EX0zZArVuj3C8=
Received: from CH2PR13MB3624.namprd13.prod.outlook.com (20.180.12.143) by
 CH2PR13MB3735.namprd13.prod.outlook.com (20.180.5.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.16; Fri, 18 Oct 2019 14:27:44 +0000
Received: from CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269]) by CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269%3]) with mapi id 15.20.2387.014; Fri, 18 Oct 2019
 14:27:44 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Rune Torgersen <runet@innovsys.com>, Partha
 <parthasarathy.bhuvaragan@gmail.com>, Jon Maloy <jon.maloy@ericsson.com>,
 "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] Error allocating memeory error when sending
 RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+gAIEBdAAACQNZAAAKIvoAAkASAAAABFZhAAAiZAcA==
Date: Fri, 18 Oct 2019 14:27:44 +0000
Message-ID: <CH2PR13MB36245DC960B232B56692DB6DC46C0@CH2PR13MB3624.namprd13.prod.outlook.com>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR13MB362444F4E92A630106E05541C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <c0467e6c-af52-296c-8401-7d8ccf749149@gmail.com>
 <CH2PR13MB3624446F472B95360D6F0515C46C0@CH2PR13MB3624.namprd13.prod.outlook.com>
In-Reply-To: <CH2PR13MB3624446F472B95360D6F0515C46C0@CH2PR13MB3624.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=runet@innovsys.com; 
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a03304f2-c586-454d-c52d-08d753d75778
x-ms-traffictypediagnostic: CH2PR13MB3735:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3735030590D33B2A4CE6C4FAC46C0@CH2PR13MB3735.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(396003)(39850400004)(376002)(136003)(189003)(199004)(13464003)(316002)(102836004)(64756008)(76116006)(66066001)(55236004)(66446008)(66556008)(14454004)(66476007)(99286004)(110136005)(81166006)(6506007)(66946007)(81156014)(8936002)(229853002)(2940100002)(446003)(478600001)(33656002)(6246003)(966005)(8676002)(25786009)(26005)(7696005)(486006)(53546011)(476003)(4001150100001)(11346002)(186003)(76176011)(3846002)(6306002)(9686003)(6116002)(256004)(14444005)(71190400001)(74316002)(71200400001)(55016002)(305945005)(5660300002)(15650500001)(6436002)(86362001)(52536014)(2906002)(7736002)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR13MB3735;
 H:CH2PR13MB3624.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: innovsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: INSAFfZVh2Aw70mhxBJFbAYkt9Rt37rFxpgWWzkE4F106ek/lJnUjN8gKXsKlax7s/1yzQQWpAn5e/vA0yS1q6imYc9lcJfEhlpBlgqTXWRX0Xqe9kQGjYmfukW3tTkhJ4szT+rRRPPnu24kYMoGzdvMgpUQWw3rC70wRKf+iRFWxuWhLKjDCZRSlgp4il/8C7L2DuKG8ec/D8XLaxyCfKlrYbd4QsDYCLTVp5LOqMjpUn2w4BB57M0YSE3721tpCwr6oG4wP3MakXxrW0ljVgEo49CFj+/wTfIH+2KZt9GiKif6kM+yZn/zNaTjpEqOXVpEqV3IwCRJKaq/gDmxqRalZohC8FfYzPdUS6D77bY0/eGXGrCqk6OxjUceJZQf3ptl0wKjAHNfHMOdMK2y5SulxL2CmMHQkUPmOr+4yFH2qO7Oz7Yy4cR34z4XTWMRhI79SPopEhZLUHuid0HEZQ==
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a03304f2-c586-454d-c52d-08d753d75778
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 14:27:44.5277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u9Lvn+EieyMIQ5VEW91GwaKfFngh+lFT5s1DXSTt1RGWUQSyD4sxrslhq+2aCOT0/1FM9uNqaD3n6uD8dE9rH2T22mnMT+RW8bOZSm6wfr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3735
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [96.2.206.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iLTEP-00DZuw-9N
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

And looking at Ubuntu's git repo for xenial, that patch was never backported.

-----Original Message-----
From: Rune Torgersen <runet@innovsys.com> 
Sent: Friday, October 18, 2019 08:28

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


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
