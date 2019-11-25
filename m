Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACBE109013
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Nov 2019 15:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8x8EamFyXaLyDE/HVvuCDH4ItbJnxMrusV2JiNh3RQg=; b=K54Osc2HWzb4TAA8CkjIrhpS7
	6lXkDxgOSqM7mlbN+SWeqMjz+FRZm/xGPUjbcLBRZT8spTYzxTcYSrT6uHN8vrbniNZboad1JoVTg
	/CQyORO/RCSXESwaVJagf2wxOzF5o3bZgJY7/A/RT3giHH1D94o5potd24s5P9yEGgB88=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZFR7-00022K-3q; Mon, 25 Nov 2019 14:33:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iZFR5-000222-E7
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 14:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MkAcUBqp5VHwZ7+RisSAvVFxwKZDmUjSh6P44Wd0st0=; b=hLJHsQ6/YeFk/H0coNmxqiPnLv
 r3yPtfYJhPbDXBgpxQ4vnP+fL0OEvvi6sLc721anEOGLm9nWAOf2FpLX36xmUj4cbuw6opFwQcfhj
 zwLRrjg1tB+OqdiIkwsY9QAI92SdhlLSVkmFvEk85L28FBmtAeTraMNkQYSJ97yTHZrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MkAcUBqp5VHwZ7+RisSAvVFxwKZDmUjSh6P44Wd0st0=; b=VYFlb69qNBKNufVJJDA4M6B9HY
 ehIQFmuv81KDzfcuU0qoATfsQZG6wp/hCWWevFrQSguIBEv3SC8cCYjs/hnOR9VQPXYwB32x3KMwO
 x5VvKGRBpyW36OY93VUKzmok49GGvztAg5InLjxrx/Koc5u0EkPEoUDqaAfmD0ODmFGE=;
Received: from mail-eopbgr730065.outbound.protection.outlook.com
 ([40.107.73.65] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZFQz-004vVF-Hx
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 14:33:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S23OVGQvmEKnR2wkfSaOUzsqNqs84A0mXHFeuwPoMI1m8CG34ksWOAoDfikulCGlcvX0bbJW9E4qI8sL8N5dn0zfZwpZb517oSwy+ONf3+fqHPK6q03ihcoRMJLkDo6aM1DHir+Z9nNFk3OOc41besGNlCDmL+U6pEcDKG1RLWi3vJQyCB7ptyRmBOwOPVPAQIs4CvSACPrigxJGbHEg/mX1NoL8waw2UPQcXAkbpcJ6f6qRReI7bO/P7I2lnhCvk5IYVgKR0bpJluns876X9QY+0W//Q2mAYiBmXf0IKKJG7zYR9AM9BL8RfVZrhi7zSWPSX/7kYtqowGKtKVBg/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkAcUBqp5VHwZ7+RisSAvVFxwKZDmUjSh6P44Wd0st0=;
 b=gegRxzou2gXDEqrn0ZtLIhN0nTRBSpCwJUCdVW0Qb6cb9JuBLLKSBwcPtL+McfGw6GTaGaRmSRO6i5kCCz76OflKiBm0o4I5lTgNOoRLNeohi+Q5GeeIEMln7zwT37Lbl12Qcc7MOgmZT64pCxvLNi9ji7UVLMZ+Edl0siwkbgEo4t8WMPDe2zakww0AFlCFLfUtoWByx0ZA64SKVNnLTy351Smm2q3k7sSpaNtZLeU1+QMBMoqoB0vFnUiV0vBg4DHJhiE0A08vPSxTWsDcU8XyWEn+3hNPCYJIh5Li3vmqRqYg2YRkzBvH011+t7f6OVfR7+IiVb1LFAmv1xZXag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkAcUBqp5VHwZ7+RisSAvVFxwKZDmUjSh6P44Wd0st0=;
 b=olXSteVhDx3yJ87XwJJAo0RyukceXFU6THCcH4jdV9qKBH6aenoVgoWAPKlZWJcKMQt8eEx8Z+5lcCoz7IMTlbprWucZ2qcz5gbUjYMp4xON6bKSYEHlVi44AEbbBb2WIM6LErG4Fn/SeEGMbX6Fl8IuWVgFE6UikaI95BA3m9s=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3621.namprd15.prod.outlook.com (52.132.231.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.24; Mon, 25 Nov 2019 14:01:20 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 14:01:20 +0000
To: John Rutherford <john.rutherford@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net] tipc: fix link name length check
Thread-Index: AQHVo1qq6eneVCKPQU6No4CheKxSsKeb6tpw
Date: Mon, 25 Nov 2019 14:01:20 +0000
Message-ID: <CH2PR15MB3575437D3CAE0E199461559B9A4A0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191125063512.13592-1-john.rutherford@dektech.com.au>
In-Reply-To: <20191125063512.13592-1-john.rutherford@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05f68cdc-fb2b-4074-f1e4-08d771aff2fd
x-ms-traffictypediagnostic: CH2PR15MB3621:
x-ms-exchange-purlcount: 1
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB362130647202075B5B3170A99A4A0@CH2PR15MB3621.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(199004)(189003)(13464003)(7736002)(71200400001)(446003)(74316002)(2906002)(5660300002)(3846002)(86362001)(6506007)(53546011)(52536014)(99286004)(966005)(11346002)(256004)(14454004)(316002)(6116002)(110136005)(66066001)(2501003)(6246003)(33656002)(186003)(66446008)(76116006)(64756008)(6436002)(26005)(66556008)(55016002)(66476007)(8676002)(81156014)(81166006)(478600001)(66946007)(229853002)(9686003)(305945005)(7696005)(6306002)(25786009)(8936002)(71190400001)(76176011)(44832011)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3621;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EXPJIT0OjuNva7WhBM6/z6uejITj9+aQSz1Dcg4TU7+stnwnndbB+dc+h8rWUxwuS7NtXPSiCWyuFoxput4abBDwFlGZMlsHO4AEOdSzLmdW4OGZYM/BfwT5aGUHo8LxH4yc2Z6wNTKaSRKRae5ckHniDnka6uIWJbNCQdvgLSan7wTuzbk996pHrWWo+yIO7QCHNm6qhBqevhlGYi4EqvFbQwW0EYXbMQW6UHawN0mmFVu0FfiQQBZMrQxwqt2lFm8djGF2PlM784llCjZ5amUdcUBRVYwqsXpL941Gn8ze6xk1MXF+Nmyq/G28zFJK33KONKYKhbH/8VOIZajH5Vo0Cf6MzqU+g+f9MDO3Iskzm2zC77z+GNLiTgQpfrcCwgACrkCIzxDYnF73MszvFhJlAu45YHNNI5lKDeblojpvrVPb2wgM667aGEe89MUuYVevHA7jUjpBv+sXPohb+lDRDLJRCXPEtY5M8PrCrAE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05f68cdc-fb2b-4074-f1e4-08d771aff2fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 14:01:20.5119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2lf/JWQIv89DdExdThPrjgpbqhJAhvSwEcpIPEVD4X2B8HHRWXzu8Zo+WFtNiSScmr6ei8S1pm8/4KQpjUlVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3621
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.73.65 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iZFQz-004vVF-Hx
Subject: Re: [tipc-discussion] [net] tipc: fix link name length check
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon

> -----Original Message-----
> From: john.rutherford@dektech.com.au <john.rutherford@dektech.com.au>
> Sent: 25-Nov-19 01:35
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [net] tipc: fix link name length check
> 
> From: John Rutherford <john.rutherford@dektech.com.au>
> 
> In commit 4f07b80c9733 ("tipc: check msg->req data len in
> tipc_nl_compat_bearer_disable") the same patch code was copied into
> routines: tipc_nl_compat_bearer_disable(),
> tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().
> The two link routine occurrences should have been modified to check
> the maximum link name length and not bearer name length.
> 
> Fixes: 4f07b80c9733 ("tipc: check msg->reg data len in tipc_nl_compat_bearer_disable")
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> ---
>  net/tipc/netlink_compat.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
> index e135d4e11231..d4d2928424e2 100644
> --- a/net/tipc/netlink_compat.c
> +++ b/net/tipc/netlink_compat.c
> @@ -550,7 +550,7 @@ static int tipc_nl_compat_link_stat_dump(struct tipc_nl_compat_msg *msg,
>  	if (len <= 0)
>  		return -EINVAL;
> 
> -	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
> +	len = min_t(int, len, TIPC_MAX_LINK_NAME);
>  	if (!string_is_valid(name, len))
>  		return -EINVAL;
> 
> @@ -822,7 +822,7 @@ static int tipc_nl_compat_link_reset_stats(struct tipc_nl_compat_cmd_doit
> *cmd,
>  	if (len <= 0)
>  		return -EINVAL;
> 
> -	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
> +	len = min_t(int, len, TIPC_MAX_LINK_NAME);
>  	if (!string_is_valid(name, len))
>  		return -EINVAL;
> 
> --
> 2.11.0
> 
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
