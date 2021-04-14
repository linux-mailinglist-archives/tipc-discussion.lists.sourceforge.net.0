Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F7335F283
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Apr 2021 13:36:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lWdoV-0007UT-5O; Wed, 14 Apr 2021 11:36:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lWdoT-0007UL-H5
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Apr 2021 11:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XtIJVEG3NWYk+nrGoGXNkVxqyrFCdYihjnYNmdlDZjQ=; b=nEBQToWsCTcVtV/mEfjLM+gxFb
 h88sfhb4HsQvQS6ZbIMfhXySFCB42mQMbFQCdPPc4EKUwMWykgsnjjgWsR8fpbpnNbuk0E3SDyPNI
 FweQSb7wTo+2e0RJWyjXLbLjZslSsdxIkTZNrhfExo56kERJmx2Nxrsfb+UdQTkdZYek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XtIJVEG3NWYk+nrGoGXNkVxqyrFCdYihjnYNmdlDZjQ=; b=D4aFpQsIyRTEqVvFfHbFJlmjYk
 IWnn3l7o75/vmvWibLmCwP7K1Z3PnyDbPwc+xhWB1UclGX+hUGQVrCO3lSo2gOMXVziFCg4t4nMHv
 riWytqMU2L4azIP8RYksYL24TdkWN+BxZk7Hyqcegz26NL13nsbecZ+pkZAJ0thfIQWw=;
Received: from mail-eopbgr40104.outbound.protection.outlook.com
 ([40.107.4.104] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lWdoC-0006UL-T6
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Apr 2021 11:36:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X02yJVbMYewh6F/20Vwqbe9jAWpz0NU+HYwuaLluBWf2qV98L724p4dggh9nLzUXXiSA/nrKLM7Stxuh622MEisRrtxgzryNvUbQZ7JqkISltd3ssqa0c25eDahrOl5O8+Z9fNKoNCKNcnH8d7e9zbZQuAYfWV/weInI7F0LpnggR7E4e9uh/0L0HZVcmp5Kq7D7tsxU4C0xAbcg4Mku8WdJ7lj38M7SWCFmoigPiYLsPht2Z/ttJPw49EAFl6ath7OWgkQCfKE8GhyqheBZfFfkQwZj+DTA+dLQdmnqxw5embt/yMHLV+ZbnbLAalTdzsGpc6umX93AI69XiMIhFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtIJVEG3NWYk+nrGoGXNkVxqyrFCdYihjnYNmdlDZjQ=;
 b=W68OCMMobbUWkZxLfy1uiVt1yrBb1EnGkrqrokZyhlMbxpP0HqlR81otKWOiNcA9uJWkktlLn65Caw5soO6zHfnZKXYVy4cUoRpXBKO1YTBC61BGfDoC54Cv3TF9vKC3bbqaz8zntkqqa6iJUVX19anu+D5go2bWs161apOD0Py7tLmcEKGnzJg+w8Xy/Y+8RkaGkhWQvU2jbtcTplQ35YANeLQMa2LdYH3Wwj9QPQpnmEslGpHq/f6O6SCgIcAfQfnXyJllq0gLLivGbtZ6scOsnmxcBSwZEFqFvMDSYURtItozZ9SgAOesFp6ketHojLYodYc4GBLnWQlArQioaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtIJVEG3NWYk+nrGoGXNkVxqyrFCdYihjnYNmdlDZjQ=;
 b=RVLAw2lGeD+xG120inNIF5V1jjfWr4e4jE8SoWMU+lySyX/MuV3k8eUirDlq2WlQRQcma5/3N1ApeD0Sg4cY2x8m8LmrqkfCXVM3JkKA/1R3xK4PMKQWogbzvb/W4pXL6dcPH2/WzxpcxfwazZrlsDN0wSQ8aRboS1C1m1vLzSE=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4927.eurprd05.prod.outlook.com (2603:10a6:803:56::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Wed, 14 Apr
 2021 01:44:01 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:44:01 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next v2 0/3] tipc: some small cleanups
Thread-Index: AQHXK/DOD4bCTkBECU+PNEifaUf+A6qzRr0g
Date: Wed, 14 Apr 2021 01:44:01 +0000
Message-ID: <VI1PR05MB4605F89B6CDB409DC5257942F14E9@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20210407205836.3187340-1-jmaloy@redhat.com>
In-Reply-To: <20210407205836.3187340-1-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4def9e4f-c55c-4a9b-d6a7-08d8fee6c79c
x-ms-traffictypediagnostic: VI1PR05MB4927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB49279D91AC8BE054D4EF2A05F14E9@VI1PR05MB4927.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: km+r8OJG6C7UVXUFFmJKS6yTjry6MCjSuNiLPIa/dn1XTTjgP8NjVBLkESzr0FwhDNNHDi38cL1ZcxxNQZRW0XUEKbW4CtMJljbUtdtAD594BRfm2jnSd8LUN7dU/wD9zv9FBgCuHZWC4w37clAmUAPQSB3pH4u1odxoCeLz3i2rCCqd1zGQSoEsd+XL7jvIyNl7O/GTmMDIc3itjhR/ARpYEFd0E6Gqjkcd/doHRK9NKwPjmY5KXkyCk4jhgtAHZID2h/+hduFf8rMK7rWFgPRO3A2x+AAZ5l36UOmJGRb9uGmVffkE54BV/fvf1frCaKqIoeIATz+U9CJlnRMf8CnquZjEegl0ZFnrHrw95LFUpKezlPpWC9JARsI4NmTUMvBgYLkM3Y0bScyV4SgP4j5FaiU1BWTJWDpNRr2ijcol2a2c7rUGGss/w2xcNg3nmgatQ8yul06eDc6u2gCCb5vjvkpfsKamsOuZD/ZXt+jGzBkxl9CRydUcO3Lf1nO3gfNWwS9neTUGawjEOUZo5986oyYPF8sR6izBZvIvbUxGsMSV9J9dd74pPIeDgYmkTyPCZGG6CEC6WqHO42ZO31zKAMTJuMs+adeFjRmLK4Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(39830400003)(366004)(346002)(376002)(478600001)(26005)(2906002)(76116006)(9686003)(186003)(55016002)(66946007)(53546011)(66446008)(66556008)(64756008)(52536014)(86362001)(66476007)(71200400001)(33656002)(8676002)(110136005)(54906003)(7696005)(4326008)(122000001)(38100700002)(6506007)(316002)(8936002)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?fX0Im6YRmdk9TDUWVuUCSB5cIfi9gyh50DUXPCRe6G8YRVdoK70ATTZC7K1b?=
 =?us-ascii?Q?QUOovfaOsd36F4jKy6podfNQU7mVfc15lAqRrp2We7fvSXDEu+OKe90MqFhg?=
 =?us-ascii?Q?qvSl05Aw5evMOw8BOYVzO4UXnL7iV1C7Twffh8OleBAfvwVG0VsEjjcQRCul?=
 =?us-ascii?Q?UwuNHyfhAR37nXSLdQXtyJVCLkT0fBApH7iqnPyGR+eqzZl8FPvKq6NeR7Ry?=
 =?us-ascii?Q?2XEu5N/35Lgyian9mLpLxcPbQ6qm9pJkbk0CdCNT6xuFLd7He2vGbqeOzNTx?=
 =?us-ascii?Q?Xflkrfph8zgOBT+UIfT7cpqv6XhksRc1aLLPI+a0ra1e7wLNutBrK/pyZa9f?=
 =?us-ascii?Q?w6AThrG6aVq8L1z3W5uloW0ZVbZtUWT8FNxOiVl4Czh6P7RppvqRalUW8sAM?=
 =?us-ascii?Q?wo/gjmy7LpmUdFMa2tc1LKFILGydMukikm+3ip8BXwo74k1yaLA0fIg5Djb1?=
 =?us-ascii?Q?afc0i4JUxgPTgQic7/B+NxPDiOGbAfi+iQ/sQpn9wKZVL+V/+OSmhNuION80?=
 =?us-ascii?Q?m4cLQIIHXkzsaJEBs2DhSk4n6O/ZfeEWKjqgteF7FMr4wWfmqs1UfMxeNxBA?=
 =?us-ascii?Q?MH7zpJj9Lo/YtFXjFAtnAc90IjFh5mXSVrmqbYttRILeGrSyZ034p+EorJrB?=
 =?us-ascii?Q?En2qx+M6sEAJ1fhWIWmQz3ilRJUCh42L57+y+l+CR8RD0B7xkvKP02gtQdnk?=
 =?us-ascii?Q?m6NXI1viYRgAMspwCQs7Q2xQfWtODB0ZVavdv96bq5gKKbdeieruqaGdOTU5?=
 =?us-ascii?Q?sh1K6Yl3HDaYW5EjgwhYi19A3AXcsr9Yup7YtGtiIARsroENfoHgBeL6sTe1?=
 =?us-ascii?Q?ocUC5wkd7fy+VRGhN8bIiJqlIm8ZihptY/BA2tVzejOUke5YiFsaQtFPvxJE?=
 =?us-ascii?Q?urzxCiEkUSFSPkqP3iCg8HkKY7+fAXDAJRt9s39O+lZHBCt379rirVtF4/jn?=
 =?us-ascii?Q?ZZqZPaMPRreUeg6VmmpUmLFrPVQnRlnn9nmUSN4XOxtskCCGcTc7rRiYzxoJ?=
 =?us-ascii?Q?m+OaDceHDXrcICIcPR4Qf9g2f4CFbi2SgmrjNqYQzZj/x9qscdoxLizYdEcS?=
 =?us-ascii?Q?HERlZXCJ3k+kdfVxcZpGRrfYQrV/2Hw7Kzsi244ljq7ZRrwfzNSZhGdv6DKn?=
 =?us-ascii?Q?ApEKfZlfAE0i3EHPnDZ12IAdVhKxLmV4MXxGBFTanbLlLKRo9zF7eOPtzvOd?=
 =?us-ascii?Q?sY6BrqGtIvfflHDqKy2GNLKwPCqTLYDJhPo3Ud7Bt0JXPJyf+87miSpNuXPt?=
 =?us-ascii?Q?uwTl0ndbWKaVcffJU1p7QE9Ucdp/HJl/LC39O3RnNxFbDcjUnbTpVVypmzum?=
 =?us-ascii?Q?SRA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4def9e4f-c55c-4a9b-d6a7-08d8fee6c79c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 01:44:01.6443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MZ9URTTnJxeYCuHt1CH/YNja8FfKHdltYT5Dz80PcDDRbdOh//9/AJUaNqAb5dSDcsD34hgpunxIIIy8YhDl/TBgxZcmF6ngDjCOG4GEKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4927
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.104 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lWdoC-0006UL-T6
Subject: Re: [tipc-discussion] [net-next v2 0/3] tipc: some small cleanups
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
Cc: "lxin@redhat.com" <lxin@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Series 
Tested-by: Hoang Le <hoang.h.le@dektech.com.au>

> -----Original Message-----
> From: jmaloy@redhat.com <jmaloy@redhat.com>
> Sent: Thursday, April 8, 2021 3:59 AM
> To: tipc-discussion@lists.sourceforge.net
> Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; lxin@redhat.com; ying.xue@windriver.com;
> parthasarathy.bhuvaragan@gmail.com
> Subject: [net-next v2 0/3] tipc: some small cleanups
> 
> From: Jon Maloy <jmaloy@redhat.com>
> 
> We make some minor code cleanups and improvements.
> 
> ---
> v2: - Removed patch #1 from v1, which has now been applied upstream
>     - Fixed memory leak in patch #2 as identified by Hoang
> 
> Jon Maloy (3):
>   tipc: eliminate redundant fields in struct tipc_sock
>   tipc: refactor function tipc_sk_anc_data_recv()
>   tipc: simplify handling of lookup scope during multicast message
>     reception
> 
>  net/tipc/name_table.c |   6 +-
>  net/tipc/name_table.h |   4 +-
>  net/tipc/socket.c     | 149 +++++++++++++++++++-----------------------
>  3 files changed, 74 insertions(+), 85 deletions(-)
> 
> --
> 2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
