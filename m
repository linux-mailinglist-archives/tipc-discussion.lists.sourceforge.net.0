Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61218DB2F2
	for <lists+tipc-discussion@lfdr.de>; Thu, 17 Oct 2019 19:05:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iL9DA-0007Sd-BT; Thu, 17 Oct 2019 17:05:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <runet@innovsys.com>) id 1iL9D8-0007SU-To
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 17:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ApayO23I0LKPYzeKAA9TyZujW0gVZHj4qMBIlFYDMos=; b=DsDW+4EwwhyKkeoCx9iFIsCyCu
 uthmZrRdEbFaNkbU+xvgdOw9pgWmG8ISV4nuslLCtzWu9YRgXcTYAMZ5fOGS20nh4nNoQ1cbDp9Xt
 Dw/NpouS9Mf2ZrATwvkbhq8oaLvOXv4d7ew2cV5+DaK2E4CuoCd0brIzFrM5WkdfjE9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ApayO23I0LKPYzeKAA9TyZujW0gVZHj4qMBIlFYDMos=; b=g
 qztmGvDwLQCnSHvH8BHiN7ehXDUerVRXa5y3IN/SAU1CC6ar3VHOy76vf/Ck1/3X/2qDjl71w5rfw
 WYfgI7vdxOhunSHDY4lEvTMYIDL+Tc7O7OzppsL9+Zinxfm9pQzHhASZM0xAJ3PVIDIzQdF6R15TE
 QZQbpJpew87F2qHY=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iL9D6-005WuM-5Y
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 17:05:14 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Thu, 17 Oct 2019 12:05:06 -0500
Received: (sendio-qmail 29652 invoked from network); 17 Oct 2019 16:38:26 -0000
X-Sendio-SenderIP: 104.47.41.59
X-Sendio-RemoteSenderIP: 104.47.41.59
X-Sendio-MessageID: 1571330306.29649.1
Received: from unknown (HELO NAM03-DM3-obe.outbound.protection.outlook.com)
 (104.47.41.59)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 17 Oct 2019 16:38:25 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHlA0ZKQlWnmZZ6p2+rq/ewuG2f8pVmGD5hken0qbc2n0LaKoSpYyZEUqnb9XFBaEO+ZS3hwP3nLC14Ep6IsoCGaWk/gSH6/SzXhGkTjzrYEcFKO9ZxsGz88h+upEbIfaWKy7tA6bycMA+hkqySI+cJkgK9z5ZE4sikWh42ZARF8cv+NQ/GYT0fhyd4Yih18td+wuZ1G8rifYj/9BxOnRaebH3NfN2JJpPXypilqQznII7by6LLdCtKuqZTj2gd2OHDfLzOb6GOFKjp84ZH8RW1csAb3IItpkVSADnBKvd/4dH/P5pAo0KFhb3v5HG95CydVShp6vRlhJzHhc+rdCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApayO23I0LKPYzeKAA9TyZujW0gVZHj4qMBIlFYDMos=;
 b=G+askvlR5nPzn9ZdktsL5dwpzO/hQJwkSgkwEw0TPM1J+P8m40AKs3ty7+gjYIlaXJyMjbPtIeUNl/Wr7gIZmyOtLC2PcbQf8sal6aCwJIrFaV+tmALMISrrt2loj2tLRPC4qlMyneIggSiUZ9IQtVVsYCBGc1mwtXk/KJAQ4+Qu6m/ssFxLZ8UZOAIXdfNQNDiW2AnH+qvA0cYT3p0N4x072jNUDM7ZlrSRi5B+M6xjUR4WdSrV2ATiSBbNblDJqp8zjDb6afap8765GqtQXRwECKji33+cLyEK5qp9uaZF/gM7OXwCADJZOpeb5gCJS1o3TPgQPWY3uF/ObF2kPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.onmicrosoft.com; s=selector2-innovsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApayO23I0LKPYzeKAA9TyZujW0gVZHj4qMBIlFYDMos=;
 b=bDRk7uzloy7KJ6U01LU7kHGXqfgb/1+jVHtaS8QRP4v1IFcwrzxaFrSqp6Ghh4TmG9EN9dog9GnGpH9zKwDOPcXnU0Yh73+eTS4DglSgtMdyWK2X4TpeNxQrbhMHk/2NZ3l2eB/ucCIFmzujI/5K0KBdU0RAwGf3FbzHUntyJtE=
Received: from CH2PR13MB3624.namprd13.prod.outlook.com (20.180.12.143) by
 CH2PR13MB3733.namprd13.prod.outlook.com (20.180.15.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.16; Thu, 17 Oct 2019 16:38:24 +0000
Received: from CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269]) by CH2PR13MB3624.namprd13.prod.outlook.com
 ([fe80::4dca:87af:2b1b:9269%3]) with mapi id 15.20.2367.016; Thu, 17 Oct 2019
 16:38:24 +0000
From: Rune Torgersen <runet@innovsys.com>
To: "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Error allocating memeory error when sending RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+g==
Date: Thu, 17 Oct 2019 16:38:24 +0000
Message-ID: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=runet@innovsys.com; 
x-originating-ip: [96.2.206.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2fcb1a5-9f47-449c-8622-08d753206def
x-ms-traffictypediagnostic: CH2PR13MB3733:
x-microsoft-antispam-prvs: <CH2PR13MB3733A50ACBD54FEFECC946D6C46D0@CH2PR13MB3733.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39850400004)(136003)(376002)(366004)(189003)(199004)(316002)(71200400001)(71190400001)(478600001)(7736002)(15650500001)(2420400007)(486006)(74316002)(76116006)(66446008)(256004)(7110500001)(66556008)(66476007)(64756008)(66946007)(2906002)(476003)(7696005)(33656002)(186003)(26005)(6916009)(102836004)(54896002)(6306002)(9686003)(99286004)(6506007)(55016002)(86362001)(66066001)(55236004)(25786009)(6116002)(790700001)(52536014)(8936002)(14454004)(3846002)(81156014)(81166006)(8676002)(6436002)(5660300002)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR13MB3733;
 H:CH2PR13MB3624.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: innovsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2OvrLvDldnNnCwMwkHl5OER7LDc0ebtJaa3M/tCpDIv2QYzC9088s14f++mYzbZiUyRoKUUicxZKj6UCq+RF2XLDKZy2nNpzhCehGbS52U6iS/zlxA06aH5ckL0cYwETTODoL+xNHzYi0n+DaN3x6Xlz5qgSVUzRC8jdS4qVYeC2TDaeJ1JYj876zJ38/S8vuHDzNIOUmXjqBiRaz64e5I2SdE6ZfBKbaiaNeyRQzI/piYHhSkF2Ln6z8MEaE066xe98eOJt2KSXpQOxFY7UAfDhIOxu6GoiYDEvL9f86yI71ko9ljBhhmPN2/t9P/wXIGgY7/RVuIWwcf5hIzMEgmkKwREFT+mBgNMFSVjGG1agwRYIUKRi0tGgJ1uf09At8Z7dejMzJG0pIe8iOpFKZe3frN3XJrc4FQFKFQJb3Pg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2fcb1a5-9f47-449c-8622-08d753206def
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 16:38:24.3980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o1CKWvcMKY1AIsFiQqeYqO91o2CswIzUADuEkxAUI5IFsEyhpdKlv2/TgZdlzcPirqblXgIQu9l84OhSg/ScIjtJFmOuD72v35Bj/m7yLY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3733
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [96.2.206.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iL9D6-005WuM-5Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Error allocating memeory error when sending RDM
 message
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

Hi.

I am running into an issue when sending SOCK_RDM or SOCK_DGRAM messages. On a system that has been up for a time (120+ days inthis case), I cannot send any RDM/DGRAM type TIPC messages that are larger than about 16000 bytes (16033+ fails, 15100 and smaller still works).
Any larger messages fails with erro code 12 :"Cannot allocate memory".

Really odd thing about it  only happens on some connections and not others, on the same system (example, sending to tipc node 103:1003 gets no error, while sending to 103:3 get error).
When it gets into this state, it seems to happen forever on the same destination address, and not on others until system is rebooted. (restarting the server side application makes no difference).
The sends are done on the same node as the receiver is on.

Kernel is Ubuntu 16.04 LTS 4.4.0-150 in this case, also seen on 161.

Nametable for 103:
103        2          2          <1.1.1:2328193343>         2328193344  cluster
103        3          3          <1.1.2:3153441800>         3153441801  cluster
103        5          5          <1.1.4:269294867>          269294868   cluster
103        1002       1002       <1.1.1:490133365>          490133366   cluster
103        1003       1003       <1.1.2:2552019732>         2552019733  cluster
103        1005       1005       <1.1.4:625110186>          625110187   cluster

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
