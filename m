Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A60513C707
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 Jan 2020 16:11:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1irkKA-0002Qg-PC; Wed, 15 Jan 2020 15:11:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jpelletier@netnumber.com>) id 1irkK9-0002QV-Bl
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jan 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5OHV3zH+ZrzMoMd34oOCU3Dv2MCyIYi2y5Djl872ZrI=; b=ZbHLD6So4e4P/BvT3Tlf/yvi3W
 JLdtSicVevU+quI+ZwtSNI24rZX5hD2gYu8Ykc+0YJVIX8uCr1CmJtXqmJgiL/UDvnUFIVDRlsX7E
 xU8fqLzEUhwR+/LW/7Gp/kn/XShiatSgGOt1utxp2Y96dArdAyH+tqhVBoa9Ta53OBug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5OHV3zH+ZrzMoMd34oOCU3Dv2MCyIYi2y5Djl872ZrI=; b=bAE31++ZgWgT0n3bTGOV+feJmB
 FpNRZJroTF44bjMg2DxFpIShvMDG0hkZgZhiNn5KqPeUBVv8BPx5pjF7xG9x0r7r/Rf3hBfE1ib2P
 gbg75C7wUFlfZ1+It2aQmk/N+XDtGQbpyqMqCXNd4aMQQBJy2fpuJ3eg7Zsavvvbpx3c=;
Received: from mail-mw2nam10on2137.outbound.protection.outlook.com
 ([40.107.94.137] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1irkK4-004uhR-OU
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jan 2020 15:11:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFe07jQ7avoQa/fVG/GY71CaJZCfc6bGiuHhvjel9gXTo7v3TrcgQ9pOZPevY681ARH80ZkscChXmbks89gpME9LeVOckga81DtXa7nQJQU0jTap+Jru68f1bjNRl0xRicRs3S6d7s4TLw70uSWRGGyg2frmrNaLwxzmScIE6oDadJSU5bwrW45b1A1eO8eBvkEuEVV4XxXfEh1wWV5Fr+9eFUFTZYt5RfHO0C4P19XFF6OdBXE6LKQzQy+E9ogHFV3UWUt9It7j87iuIz0RWngEnKOhxh6n4gQmcUYnWveDUNXQayOKQVxGckxzfnQ5LgBiTapRXf5OfL6x2VslyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OHV3zH+ZrzMoMd34oOCU3Dv2MCyIYi2y5Djl872ZrI=;
 b=WAaNxMDQGEs97rR4EW+4gehgoVoVDWYWHXx80RixjDwWX4FjgbQHj44OJuLsirUN0IMfQFZQW2y8NtFE5QktHZMz4BQeyahLbwPJ+a+W9koBL20dTd1IP74KHDnINHcMqYgmwgoziGV9bY4py9MptHMdksk1liavfyknaZayuHbQH4+Mhu/9ZoeUx05ws2l/1R3TjJr1YK0hmoo5lfW8nYdir5hZ0QHS6OhNHqVZ3HPSeagseeHjw4AFSt9sKlyQPZpSdJbiufdWlOo0xoJW20DTbDj151oK5QavskeUN2oe0d/CcebUr2EzkKZYqnR0EkVx9WLz/Q114xC79xSyxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=netnumber.com; dmarc=pass action=none
 header.from=netnumber.com; dkim=pass header.d=netnumber.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=netnumber.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OHV3zH+ZrzMoMd34oOCU3Dv2MCyIYi2y5Djl872ZrI=;
 b=Tk3WmllS8Z2wygzV8h7NC8739gu0WoXe4CQuTLAt8akuz8k93jtHI2kp/0Ff3HVfzYa/wWM5dWofvvp8OKHrJKV01ZqOtj7uGtJFQn356L52hcxJ11E1U/OzNsZX2Tiihw5hVAtgcPJTNcAoxXowzBHrWxQM0FBdYfQ9y82xxDM=
Received: from CH2PR18MB3431.namprd18.prod.outlook.com (52.132.245.140) by
 CH2PR18MB3320.namprd18.prod.outlook.com (52.132.246.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Wed, 15 Jan 2020 15:11:01 +0000
Received: from CH2PR18MB3431.namprd18.prod.outlook.com
 ([fe80::7d15:4ee5:e049:d461]) by CH2PR18MB3431.namprd18.prod.outlook.com
 ([fe80::7d15:4ee5:e049:d461%7]) with mapi id 15.20.2623.017; Wed, 15 Jan 2020
 15:11:01 +0000
From: Jay Pelletier <jpelletier@netnumber.com>
To: Jon Maloy <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] Disabled port detection
Thread-Index: AQHVyiP8VBbNVvbdJEaXe5rpnomsi6fq1qiAgAEA+L4=
Date: Wed, 15 Jan 2020 15:11:01 +0000
Message-ID: <CH2PR18MB343146D688676F87A36F466BD9370@CH2PR18MB3431.namprd18.prod.outlook.com>
References: <CH2PR18MB34316BAA676F2844DAD31620D9350@CH2PR18MB3431.namprd18.prod.outlook.com>,
 <168818824.11614195.1579045859813@mail.yahoo.com>
In-Reply-To: <168818824.11614195.1579045859813@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jpelletier@netnumber.com; 
x-originating-ip: [2601:18c:8600:c60::12e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27b415f4-28ac-4216-60a6-08d799cd2201
x-ms-traffictypediagnostic: CH2PR18MB3320:
x-microsoft-antispam-prvs: <CH2PR18MB3320FBB4CD0F7273B413769DD9370@CH2PR18MB3320.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(396003)(136003)(346002)(39850400004)(189003)(199004)(8676002)(19627405001)(81166006)(55016002)(186003)(64756008)(53546011)(6506007)(66476007)(7696005)(81156014)(9686003)(316002)(86362001)(66946007)(66556008)(52536014)(71200400001)(966005)(110136005)(33656002)(2906002)(5660300002)(76116006)(478600001)(66446008)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR18MB3320;
 H:CH2PR18MB3431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: netnumber.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jUDl5jvJIIaYmrMcQMNqFDNLb4nwpU2ir1AopFrRComwOzLAnqk/UUgvThu2GGT+6ljK3Sebb7EKFfWELq2DNWvhKM8x1r2Gd7nuaJnMyWIHKsNVmjQ5/U7xndSoWGLg1cAQsg+vlkuNh4g3NY9TdX730NeH/CNXPMJEKg3hPj75euYz6zLowRgynnCTKmgVChWSt7Lrt0LY4D+4PJMofR/xB1Gan2GKffXsYXxx9msTWz+m+VQm1s5J0UobjmICCIk1kCzllEYzeoGSvKtgVkhXc7Tem3NTKntLWU6la9bckIMDDyGsGneY4kZQNNiURr3lAE8p4D26YKGFXCIz58I0k1mP9u0jT9v3ZEE9x8knklYiGfINWZrgOx0pwbjP0wsc4nbfytauR9/wvjXwyiUKreYApSbIxOfti6EXxAiez6ZEF2zsrFdFG0yEudma/FA4O4/WP/eyCN0LD8jEIdUpU8u7c2hVtSH1aytDKTg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: netnumber.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b415f4-28ac-4216-60a6-08d799cd2201
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 15:11:01.2506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 07ef59fc-9c49-430e-922e-28c86c69c13b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZLeLDLGieX8OqFNCYHFwTfNJRHhKIKNkzUbboCGnYUKF7LpqkkVJrMyvsNK5INRgScftsTxQJHjJeI6WRpslJ5k/AicwHzT6kPwM/NKd+tw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR18MB3320
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.94.137 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1irkK4-004uhR-OU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Disabled port detection
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

Jon,

Ok, thank you for the response.

Jay
________________________________
From: Jon Maloy <maloy@donjonn.com>
Sent: Tuesday, January 14, 2020 6:50 PM
To: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>; Jay Pelletier <jpelletier@netnumber.com>
Subject: Re: [tipc-discussion] Disabled port detection

Hi Jay,
Unfortunately there is no such feature in TIPC. TIPC on node A will detect that the connectivity to all other nodes is lost, and vice versa, but there is no way they can tell *why* this happened.

///Jon


On Monday, January 13, 2020, 12:48:47 PM GMT-5, Jay Pelletier <jpelletier@netnumber.com> wrote:


Hello all,

I have a bit of a general question.  Is TIPC able to detect when a port on a network switch is disabled?

To further illustrate, here is the scenario:

A 3 node cluster where each node is connected to one another via a network switch.  When the port for the connection of one of the nodes (lets call it Node A) is disabled (not disconnected), Node A is reporting that the status of the bearer still active.  Is there any way for Node A to properly report the status of its bearer in this scenario?

Thanks in advance,
Jay P

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
