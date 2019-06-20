Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2135C4CD7D
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 14:13:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdvwR-0004Fz-5M; Thu, 20 Jun 2019 12:13:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hdvwK-0004FY-00
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 12:13:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=URDBm67W8ooE5IdvOH2Ww3FZk99xtUTWkxo5pYDywx0=; b=I9k0nM2Gt1zLc0BWYYK1bk6wgh
 MakGSwpnr1A+Hj7s9ABAWmwJbH0OpVdBGel2na1D/CRwLWHtS6PQ/NG0AxtlHti68KIklEW/B5VcV
 VHIhqR2jgtcin3e2osYEfRjTMhpO8mHw0LzMrXYYV0YiLFwT/f8p/m9MAtPPwFvJXyiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=URDBm67W8ooE5IdvOH2Ww3FZk99xtUTWkxo5pYDywx0=; b=jUBxi4GUj7gHLjGzcZgelxKq0z
 oPxDTjRrvQ0Mf91Wp4LWrV9IMt5U0qnyg4dMJb+O9RjhYmtUGp+Aeak7IEvulmahgehr5GXOveXXi
 RJVBChpv4Wj/DgG0tAAQE0BzflQju0D3jwYmoiEpYRwSZ/7v1byZ8+uYAaEO468k79Nw=;
Received: from mail-eopbgr750080.outbound.protection.outlook.com
 ([40.107.75.80] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdvw6-0063QM-Lc
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 12:13:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URDBm67W8ooE5IdvOH2Ww3FZk99xtUTWkxo5pYDywx0=;
 b=KkpXuF3nAd5kiAQm6NlEdMmu/6pJKWZJVwKgDEeDn+AFKPYNrT0RfkSI6JUD+xBYbvUXfZQ6pd9m1XcqGknNMffhC5ag8OsYxKhz4T9rG1XVGn/8HyVtr/UcIxeEnuUyao+OabSiHEiM2nOb0hX63DznRcLjzJ3jf5+L1Tg8dNk=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3637.namprd15.prod.outlook.com (52.132.229.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 12:12:55 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 12:12:55 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: John Rutherford <john.rutherford@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next] tipc: fix missing indentation in
 source code
Thread-Index: AQHVJlFl7JHlrswiN0+/Ehh9h64ft6akdhvA
Date: Thu, 20 Jun 2019 12:12:55 +0000
Message-ID: <CH2PR15MB3575D772DB0F5CF099D937D19AE40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190619034413.25800-1-john.rutherford@dektech.com.au>
In-Reply-To: <20190619034413.25800-1-john.rutherford@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b937f937-f5a5-4f3a-5742-08d6f578a067
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3637; 
x-ms-traffictypediagnostic: CH2PR15MB3637:
x-ms-exchange-purlcount: 1
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB363766215EFED92E2DFF16AA9AE40@CH2PR15MB3637.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(39850400004)(396003)(366004)(13464003)(199004)(189003)(7696005)(102836004)(2906002)(71190400001)(7736002)(110136005)(26005)(5660300002)(81166006)(2501003)(11346002)(76176011)(316002)(305945005)(6246003)(68736007)(478600001)(53936002)(8936002)(44832011)(8676002)(186003)(446003)(55016002)(486006)(86362001)(81156014)(229853002)(256004)(14454004)(9686003)(3846002)(476003)(25786009)(6436002)(14444005)(66066001)(33656002)(6306002)(76116006)(966005)(53546011)(66946007)(6506007)(64756008)(73956011)(99286004)(66476007)(52536014)(6116002)(74316002)(66446008)(71200400001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3637;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yWtoWg7EcFscMYkGAUsH0Dr9/ZIQvN7A32378bLF/W4Nf1blQ0LajIY15JDuYcBYaAIktVlvtvHZg/Nmies++aV4ZTLi6ZlHj8/3q3P4m7Vl8isMhZuiCN5ad/FCYn28WFVZ018K9rhGq/dxPkMjfooHt5nkHilgf8LLqHhIpiVaPhisBOCTeAzeTKDpwEfEP0VCDlSkAUSRxZkA1XAQaMQv8HosDkqvNgwYwHvZYDVeE1GeTBlAiA8XtWiijPreR2X5qXNMMg44Xp4S9g352ROLCEPGb5BqkubtOkRBRVtuRGIQvx+HAgOlLDuU6VDrcx21LQ4O9Z4fJwKT5qOrnDi0X3lDwR2wxden5w/WmA97I8TmHfdpa03Z4UHaP4NCArHSjsinFnBjF3TGuAxyHP4TBuEVM+/05PL/E4KNaOs=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b937f937-f5a5-4f3a-5742-08d6f578a067
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 12:12:55.4242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3637
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.80 listed in list.dnswl.org]
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
X-Headers-End: 1hdvw6-0063QM-Lc
Subject: Re: [tipc-discussion] [net-next] tipc: fix missing indentation in
 source code
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

Acked-by: Jon Maloy jon.maloy@ericsson.com


> -----Original Message-----
> From: John Rutherford <john.rutherford@dektech.com.au>
> Sent: 18-Jun-19 23:44
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [net-next] tipc: fix missing indentation in source code
> 
> Fix misalignment of policy statement in netlink.c due to automatic spatch code
> transformation.
> 
> Fixes: 3b0f31f2b8c9 ("genetlink: make policy common to family")
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> ---
>  net/tipc/netlink.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c index 99bd166..d6165ad
> 100644
> --- a/net/tipc/netlink.c
> +++ b/net/tipc/netlink.c
> @@ -261,7 +261,7 @@ struct genl_family tipc_genl_family __ro_after_init =
> {
>  	.version	= TIPC_GENL_V2_VERSION,
>  	.hdrsize	= 0,
>  	.maxattr	= TIPC_NLA_MAX,
> -	.policy = tipc_nl_policy,
> +	.policy		= tipc_nl_policy,
>  	.netnsok	= true,
>  	.module		= THIS_MODULE,
>  	.ops		= tipc_genl_v2_ops,
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
