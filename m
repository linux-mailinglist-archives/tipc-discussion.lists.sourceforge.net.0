Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3CC3627F
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Jun 2019 19:28:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hYZhd-0006nw-K3; Wed, 05 Jun 2019 17:27:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hYZhc-0006nm-7t
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Jun 2019 17:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+Hhsu3mF/x6Jkw/6OZPYsemvoBw1hKyQv34CBMNIMk=; b=lSiLpmiTIFO6JMErANXT5KeZpJ
 zpRilR4dWakZu3UHzO1m501PlyqviPpCRmPs71BjsQfOV4SMBJgF8hjMSxpatLDfWrEIVF+0e7pEK
 w+WrtUTNVQIAlySEXx8a+hWOK+T4RyzfnSSwWl0g488+sNAXRGypF6s9uvQcahp3ruZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e+Hhsu3mF/x6Jkw/6OZPYsemvoBw1hKyQv34CBMNIMk=; b=TvBZQ8mDaoDcLDb1ccSLOqonLC
 C0jsnJG2ahSV4XwwPschY7qgWSC/NugKK9cQEHqbH/eW75s7pW6+EsZ7l2JjRKM1GLVdFeKnQOAwV
 l611Bwl6VfXjP1ovD0Nau65U77gWTq/1oNr9u3SIwbOQJcQpVr78R7suLC6l/wbA0MZI=;
Received: from mail-eopbgr710088.outbound.protection.outlook.com
 ([40.107.71.88] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hYZhX-009hn3-Ci
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Jun 2019 17:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e+Hhsu3mF/x6Jkw/6OZPYsemvoBw1hKyQv34CBMNIMk=;
 b=gkdHMbqYHMPfzdlevlZhAvDZH3KVB3FGncOSpjXmX7jnb4J1KeIShAO7tzovfAo39YpBsHA9q0zLBqgT3wwsdtRKm0Au7Pa92quPC9Z1kC5b0yNP47WtmqbY+SuPLBIjVVmM6Jw83v3Nv2auaSGMxd1o5maMBfnua8ce4aCmjBw=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3622.namprd15.prod.outlook.com (52.132.228.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 17:12:17 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1965.011; Wed, 5 Jun 2019
 17:12:17 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC 0/2] tipc: link changeover issues
Thread-Index: AQHVGpWZ8RPkTWeZBUKJue+KnVQnEaaNTlYw
Date: Wed, 5 Jun 2019 17:12:17 +0000
Message-ID: <CH2PR15MB3575A223148C635EF294ADD19A160@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c039f8b6-dfc0-40f7-b1e8-08d6e9d8f66d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3622; 
x-ms-traffictypediagnostic: CH2PR15MB3622:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3622DDDE4072D73F1D2F82249A160@CH2PR15MB3622.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(199004)(189003)(13464003)(73956011)(5660300002)(316002)(2906002)(99286004)(64756008)(6246003)(53936002)(52536014)(66946007)(44832011)(66446008)(66476007)(66556008)(71200400001)(71190400001)(33656002)(4744005)(76116006)(25786009)(68736007)(14454004)(478600001)(8936002)(446003)(486006)(8676002)(2201001)(81166006)(81156014)(11346002)(110136005)(186003)(476003)(256004)(6436002)(229853002)(86362001)(53546011)(6506007)(6116002)(2501003)(7736002)(305945005)(55016002)(66066001)(76176011)(102836004)(9686003)(74316002)(7696005)(3846002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3622;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gfHq+u8iSlifn8A69amKW0NiJJNj186dyPCfU2lccU38ANYI3McaMrnLzj37vyT0k7ERFWC1QfqckPEWDu12HfvxN1Ms05qItnkZ/SZxIs001ip42G9byktgSEwAz/9/7fUxIQEFe3m7x4SHtQ9NW954riwyyXnO1uYkabe04FaWhu+vwR2rsZSAE9RRMa5xehx9WJBfpQwUInxvjXKa//njGurhLfVhcwe6qAV+C1TeXz+kOBdnUgn2OampJikA3zG46I2sSInro9gHTai9tQseuCnYl2aAIaiQaV2SQ6pD8Km0lL1cniE3sEA9yfoQAxLcRhRfsC2VwMj3oV22RRY9ZVwGw2JCgb3UrAfnvtjWSLW2MLLUtvl3n65QwZ3JpVBluidBlmsDmWfMBu7aX86tLlKFsUTiq7ri3IgGCHw=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c039f8b6-dfc0-40f7-b1e8-08d6e9d8f66d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 17:12:17.4356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3622
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hYZhX-009hn3-Ci
Subject: Re: [tipc-discussion] [PATCH RFC 0/2] tipc: link changeover issues
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

Both patches acked by me.

///jon


> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 4-Jun-19 01:23
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [PATCH RFC 0/2] tipc: link changeover issues
> 
> This patch series is to resolve some issues found with the current link
> changeover mechanism, it also includes an optimization for the link synching.
> 
> Tuong Lien (2):
>   tipc: optimize link synching mechanism
>   tipc: fix changeover issues due to large packet
> 
>  net/tipc/link.c | 118
> +++++++++++++++++++++++++++++++++++++++++++++++++-------
>  net/tipc/msg.c  |  62 +++++++++++++++++++++++++++++  net/tipc/msg.h  |
> 28 +++++++++++++-
>  net/tipc/node.c |   6 ++-
>  net/tipc/node.h |   6 ++-
>  5 files changed, 202 insertions(+), 18 deletions(-)
> 
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
