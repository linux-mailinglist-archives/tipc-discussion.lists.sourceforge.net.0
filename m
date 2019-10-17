Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D667DB807
	for <lists+tipc-discussion@lfdr.de>; Thu, 17 Oct 2019 21:53:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLBpc-0004nE-Mg; Thu, 17 Oct 2019 19:53:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1iLBpb-0004mx-4C
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 19:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wmqZwFCgc+olpIK3MixUTZDD08/pED28fxtVYyw7o7c=; b=C8uYa8Q5Ay+9g7ClxBJ9Dl/qo+
 vlPdyVnK1J9623nfG2WCmujSuftn8jZTjn3g6j2BcqvZ7CQL9Xw9n7blwZS0DWuxY4zigHIRcgDBJ
 TQ4zZZKm1QLiZxi65leTEY8dihyyk0Y/c/+h9ceZ57JjjuE4nWSm05K/Q4zAfAh/CD1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wmqZwFCgc+olpIK3MixUTZDD08/pED28fxtVYyw7o7c=; b=IORE7giKLWRG4sRGSlV8hg5RKL
 eXKhYLiIHVf68FNzE6WookO10sV5/OrxMcm7j8bwjNLtcN5222VrQsKwFBQSvb9vGD70PyHEaNTbm
 94DSriDvTerxC48k+jeT00GGkHEkNLDhKl9i5fP9rsjanzX5nI+YJE/jcb332e8fEej8=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iLBpZ-00CnHo-0n
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 19:53:07 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Thu, 17 Oct 2019 14:52:46 -0500
Received: (sendio-qmail 28958 invoked from network); 17 Oct 2019 19:52:46 -0000
X-Sendio-SenderIP: 104.47.38.59
X-Sendio-RemoteSenderIP: 104.47.38.59
X-Sendio-MessageID: 1571341966.28954.1
Received: from unknown (HELO NAM02-BL2-obe.outbound.protection.outlook.com)
 (104.47.38.59)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-SHA384 encrypted);
 17 Oct 2019 19:52:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1DXov5QgOMwZOH6ZdfiNZtridbPbbDSL7/ngLcd+UDYiq3aIDGBTelTngkzqD8l6rv1rBWHvmnvrpJZsGKHxAuBwbmxSqGIoRD3eeHLTuDNB3DIRhHhT7Ub9Bv8lsPWG/RsUgYQXjCA+HABXv5hcZrAm0IFwW/lNTEQK+ZFNirkIIaH5Z0ZqAgFkkSkfmfExiCNded2NxSPn04CE74U7DfSiZQuZHNl5/VASuTJoRfmXuDyNChvHVI84Tf26Ct/7EeDZwc4JVE87ClYwn/cFQk00hPgZ0Is50vhxKDLDU1qf1tzeSKfWUMj805ytflyxL5B5kHhhG577QZiEMJYgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wmqZwFCgc+olpIK3MixUTZDD08/pED28fxtVYyw7o7c=;
 b=IiSEJdfhFGu+9QnO1P0nhzYVxtkmbs4635a7Olr8sY3vT62fFBkDXtl99zcHxkGavgS4oYA/qeLFaGlQhDQcp25yzySDoUVp+FQkUtJ6X+YpVrUY3LiKQpHZUZISY3jMcnE1vevQwy/RDEETuIC4PuJX4AgP//YBfxquu7iYncsSs6DTJclrtqEeT3bdTh4dUb0jcRIIue8OrSaQvyfR8FHdjtGvSIZ8Lzpt5jeHB+/CNu3dUVUWijYhsTlkns4xZreleWYf5YP0E8fiCSGTHqZp4kY3dsdSf2PDXLZx3kgKX85iNUfgIqLEdwnjzErnwBasOEiPuQR1pUzboF6s5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wmqZwFCgc+olpIK3MixUTZDD08/pED28fxtVYyw7o7c=;
 b=nnUa2J3sBEo+5VPb5RoQ4xvTq+qJA/8Abyd8/tsQOZGPfop+vTuyRaN6izkIxm6bFhkasSU8J59Pr/YCYMMIYZXBhKYYtDEYljEAjuOHYGYP9nCb/zwNF5N/Q6XK74UhFUNEi8CEqHFK7D4SPxq/q5tqRWlMxQsatPVXjhoZMWs=
Received: from CH2PR13MB3624.namprd13.prod.outlook.com (20.180.12.143) by
 CH2PR13MB3766.namprd13.prod.outlook.com (20.180.15.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.14; Thu, 17 Oct 2019 19:52:44 +0000
Received: from CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269]) by CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269%3]) with mapi id 15.20.2367.016; Thu, 17 Oct 2019
 19:52:44 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Jon Maloy <jon.maloy@ericsson.com>,
 "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Error allocating memeory error when sending RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+gAIEBdAAACQNZA=
Date: Thu, 17 Oct 2019 19:52:43 +0000
Message-ID: <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=runet@innovsys.com; 
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96098ad5-7d6f-4822-d0d3-08d7533b93b1
x-ms-traffictypediagnostic: CH2PR13MB3766:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR13MB3766E594B13EFD019D6B5A24C46D0@CH2PR13MB3766.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(136003)(366004)(39840400004)(376002)(13464003)(189003)(199004)(81156014)(8676002)(110136005)(8936002)(6246003)(81166006)(7736002)(9686003)(86362001)(478600001)(6306002)(316002)(256004)(71190400001)(229853002)(66066001)(71200400001)(74316002)(305945005)(6436002)(66556008)(66476007)(66446008)(66946007)(99286004)(64756008)(5660300002)(102836004)(7696005)(55236004)(476003)(186003)(966005)(76176011)(26005)(53546011)(76116006)(6506007)(15650500001)(25786009)(6116002)(14454004)(3846002)(55016002)(33656002)(52536014)(2906002)(446003)(486006)(11346002)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR13MB3766;
 H:CH2PR13MB3624.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: innovsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ob7m+KnH8VPSPpFociOBLkA7/u1GwbCxi3aN86jDGqzbS3MRKX5hukCucqbaqwwWj4/aVeyAaPIGbLeBUVYMYDcMElXcyHU5Z5qe6aOafA6ud1muSZ06K5U7t1vE00K2SoALrghcsd/tLtPJJHREZAzdvTeHMTCKtYVbWC90UCvV98t04OFctq6m7Jm30FX9Xj0mWFVqW/0CIo5kGtd+D7mHlXrxuQRCWMI+zpBtOn/ClWI75cJR113Y+PwJWOlDeMltb3yca4JMtAKsLdqQkxa3jB/59itSax5EIa/eoCz5LQJAyITH2dySDvoPpDAElw4P66ZPBFge8AJOsA5v/FAwqm0SzMkf9aK4MYPFe41ctDyxgK6aOY5mDLGf850lGBo54SdiJz8nXU7B+YJnRpc+GX7kg2Hl1PCz+n7v5ePV70QgI0qQHMvXs6kRqiHyE/qdlgnNOtb0R8VmdWZb9A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96098ad5-7d6f-4822-d0d3-08d7533b93b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 19:52:43.9098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HHNiWMLNnHr1tpsEBPlTFW7vCaoA/gctM6BtJu2n9LXzn1sjPK3jO+/CgebimlsSaqeRnTHmifssEjBq6vHJBg440FGRI9gm5yS0vHt7F8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3766
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [96.2.206.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iLBpZ-00CnHo-0n
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
