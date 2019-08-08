Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D510864CE
	for <lists+tipc-discussion@lfdr.de>; Thu,  8 Aug 2019 16:50:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hvjk6-0002ER-13; Thu, 08 Aug 2019 14:50:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hvjk4-0002EJ-5A
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Aug 2019 14:50:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yL0nlJSeSM94CHyhyv86iXc4NfKp1W9+6UOQAB2lJSg=; b=gdy2UubXGNiP4Xys2sYg+9a94x
 YiQLYXuLP1usQa1ACd8nfUljBSuG65X6mZ1sA0ZjKua9lpQS3grH927CkUksOySPIw4KJxQQqqEZH
 b68ARHO/jzfm4cV8LZXVQINWIWwd+mZCfoRE5LhTO1Cs+QID9FxB2koh6DQhrx27hCj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yL0nlJSeSM94CHyhyv86iXc4NfKp1W9+6UOQAB2lJSg=; b=P1jLQcsAcX30HdMEL2x2RG/8Q/
 XTPvksIGw4vFAFmvm2p59O5Q/Vbqn72feXiKiLU5FfzGCyY53psBA5XZdUhnpo+2J/lTCET13u4ve
 pf4Cz22k7RLz0Fi+HoP1rOl87D276cXP8A8/VzEi2/aKcnf+x2L/tCSo3FOCTVa2JVrQ=;
Received: from mail-eopbgr690042.outbound.protection.outlook.com
 ([40.107.69.42] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvjjy-00GHNm-Iz
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Aug 2019 14:50:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HsjnyM5YzursRdLBKRr9N5sjmQNCRkHDQddWltcK+ZOCYYFlOWT9OIXnnTgPcfLFQNuTxvjFqmCuBKoIQgSKyRttTLlp2GGcOrYqQSlFGkI86dtbBTqG29jKTwVoVRj2fzsrLeDYYyB1JpJ4QbIvLwoSkjuk8xTsEh61ZEc7ldLQKKQLo/gX6eEUiYpVjCxDEk7UtakleqDbOa6JvYHEdZY+mEJhU3Xm7fwO+bJta7f9pAv/RJrYweoNxCDsNU430LU3v2mv8QDcpMcPKOif1KDq5VWKxqW1bLRw986b6tw+BqHAkJNeMPYqxHmuq4OAf7sRFkZxNcwTMIrPM+W2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yL0nlJSeSM94CHyhyv86iXc4NfKp1W9+6UOQAB2lJSg=;
 b=kdkEgb4vjtai36wGjr/VCR29RX96qDIkIPv1Km73AROAhgFjWeUZuR3Wihstm/LUFFH758VDsJfW/F02Tz8jNUDmid7XEaPdectuiGO3ixqp2qywf8CqlOx7Z0Bfss+X8ngFlMa8QilQWW54tqI9ac1rPNkxug8QF8MoT4vfTawdGunqbtqtqWQPsUBvBdd0F7uhADUpDStmC+oeFZqmkZHy9ESL9Rch4SPGBfUewdt7tIkEtKzn82j10fRBAFT9L35PVPgTce9PAKFLi1wtIK4fefyPYAV7oDrjjzmlWghHfemF4PIPOCwSqiZjBOxasycBG4jsUMrbhf0uH1kanQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yL0nlJSeSM94CHyhyv86iXc4NfKp1W9+6UOQAB2lJSg=;
 b=L4qerM9HygZjvgAyZ5eNDfMG1GdDs7CqPSj2pb73laOHUk2hw4WASFv1fgJlsGaVsMzhsj2ewz/IjPOIOWxjhVHVSwNfijVon0ahiuglozsZeY+RAcCbMn7sk9zrzNL6/+zjHtSZdmqC+8LgpzQqj1A+QLBM0YhKLxJSWOptimc=
Received: from MN2PR15MB3581.namprd15.prod.outlook.com (52.132.172.94) by
 MN2PR15MB3104.namprd15.prod.outlook.com (20.178.252.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 14:49:59 +0000
Received: from MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::a8a2:3747:eeff:2cfe]) by MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::a8a2:3747:eeff:2cfe%7]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 14:49:59 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [PATCH] tipc: set addr_trail_end when using explicit node
 addresses
Thread-Index: AQHVTNxmcyx4K5X64kCOEEbx4BfRSKbxVbDQ
Date: Thu, 8 Aug 2019 14:49:59 +0000
Message-ID: <MN2PR15MB358160FE1011F0ED1C785A2E9AD70@MN2PR15MB3581.namprd15.prod.outlook.com>
References: <20190807045543.28373-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190807045543.28373-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [75.146.241.189]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72f0e3de-d39b-4a1d-1fc6-08d71c0fafd2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR15MB3104; 
x-ms-traffictypediagnostic: MN2PR15MB3104:
x-microsoft-antispam-prvs: <MN2PR15MB31040DA26616194FFC5B6EBB9AD70@MN2PR15MB3104.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(13464003)(189003)(199004)(102836004)(86362001)(81166006)(2201001)(53546011)(81156014)(6506007)(7736002)(14444005)(305945005)(256004)(26005)(2501003)(186003)(71200400001)(52536014)(11346002)(14454004)(99286004)(446003)(66446008)(64756008)(66556008)(486006)(5660300002)(476003)(4326008)(33656002)(76116006)(2906002)(66946007)(66476007)(7696005)(76176011)(44832011)(316002)(6116002)(3846002)(478600001)(8676002)(110136005)(53936002)(71190400001)(25786009)(74316002)(8936002)(66066001)(55016002)(229853002)(9686003)(6246003)(6436002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR15MB3104;
 H:MN2PR15MB3581.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /ygghzORsSgFAz9KVoVG+3VypaDCZ9fRsv2oTYTn6sMVKa5HKhSVNcfCD8ED9PBTsY9o9ySU6/JFtqjBxCgTI++sk78psYVcNmxk8Lw0JidOquSgYISEVmlYBc5kbv1olx6ONSrbQJ/H/+1cU/MknSBDCx3ziI32x0rKzjIZ1/Q6ZJ33WjlyBeRnUC2j/wtod9dltflB4EHeo61lMPbdfG3uSC4sfpWfcsvLvScJsypfWI3TP7M3Er4B9wp54AHip4XCsXkd4cJ+5h/PgWC/nZwH28lQvJbGUPTeCVyAP6YxCI7sSVq/2BKPrx7lYbQt1SG9hDFp5FpA1JjsYdORKtVHzSeA6Y0eFf56FLx+IUrifiH3+zuEMaoU6DR23Ex7s9G212twKeluiTSNGt+RUaDBwOlpZ6VVN6jO9bvPH9I=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f0e3de-d39b-4a1d-1fc6-08d71c0fafd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 14:49:59.2647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKde4D9ScGVGL4Dw2TxWMrYwGRN4fW/E6GVdZ0s+0K6KguQTsTGCUzSHX1ka65/u1GWU1bk35DoYd/XPeq1OYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB3104
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hvjjy-00GHNm-Iz
Subject: Re: [tipc-discussion] [PATCH] tipc: set addr_trail_end when using
 explicit node addresses
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

You should rather set this one unconditionally in tipc_set_node_addr().
The problems is not about the state machine, but that jiffies is close to the wrap-around time, so that it is perceived as being before the time "0".

BR
///jon


> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Chris Packham
> Sent: 7-Aug-19 00:56
> To: Jon Maloy <jon.maloy@ericsson.com>; ying.xue@windriver.com;
> davem@davemloft.net
> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org; Chris Packham <chris.packham@alliedtelesis.co.nz>
> Subject: [PATCH] tipc: set addr_trail_end when using explicit node addresses
> 
> When tipc uses auto-generated node addresses it goes through a duplicate
> address detection phase to ensure the address is unique.
> 
> When using explicitly configured node names the DAD phase is skipped.
> However addr_trail_end was being left set to 0 which causes parts of the tipc
> state machine to assume that the address is not yet valid and unnecessarily
> delays the discovery phase. By setting addr_trail_end to jiffies when using
> explicit addresses we ensure that we move straight to discovery.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  net/tipc/discover.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c index
> c138d68e8a69..f83bfe8c9443 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -361,6 +361,8 @@ int tipc_disc_create(struct net *net, struct
> tipc_bearer *b,
>  	if (!tipc_own_addr(net)) {
>  		tn->addr_trial_end = jiffies + msecs_to_jiffies(1000);
>  		msg_set_type(buf_msg(d->skb), DSC_TRIAL_MSG);
> +	} else {
> +		tn->addr_trial_end = jiffies;
>  	}
>  	memcpy(&d->dest, dest, sizeof(*dest));
>  	d->net = net;
> --
> 2.22.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
