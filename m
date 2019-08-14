Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B948D70B
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Aug 2019 17:16:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxv0X-0005q6-QU; Wed, 14 Aug 2019 15:16:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hxv0W-0005pt-Pr
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 15:16:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A+RyZAwStHH4TtTowam62FmCdYkqdJacuI0gCr7VusA=; b=fTMCX9iuL38GZ5QpeHj84Xx/9M
 2i+gn4JiRbslZ+oV9VU4EtvNeQx7IesZdzWzxXb6Tgg8YolNDTa7mQSwMRoSNOZ7JZh2f/4tC6f8V
 V1YcblNC0aaI/iE3s1Z7X5PRtf5zgs8/0ONfUWLmdHVzfAEoWJgVWl0MHjTxAQZILhW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A+RyZAwStHH4TtTowam62FmCdYkqdJacuI0gCr7VusA=; b=WXIy5HmlA2bn1P6mA/vo4THy5p
 VaZ8uM1/6zbvQVmVrXEEDTaXPmpp7dOtZCVXD+sKNkUWqVyt2cMgH4Y5fHcMzSEZMwTRnn841UBCg
 msNteuJA80K5CxhnsyX99lYtexEe2U4XczQNyI6MXpQK/mo0zMrxS6pdCsL3QkyxuJa8=;
Received: from mail-eopbgr710085.outbound.protection.outlook.com
 ([40.107.71.85] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hxv0S-003Yax-Pl
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 15:16:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHM4wGJe/894vnorj9IGrK1sU8mb1oCM3/425HeHgpHuQJlVtBMRjWV+g0xkry8Vk/yUajfqyMQxwrGbpHH2XMKKdixaF5o3wXqEX4aMRUzJgp/wkdGH2Av813v4Pr+lC05Av7l+B+VwsCV7MZ4kuz5yxxnHuj/foSVG97UT75n12CHSCu7xP9IcR31pqzeUNIpD36oqMzyFWKigwdwDHJPBqESTg6UvNL1P04MXLlBB2N2nHPdliIH3RLFkDxVcbWCOPyMl2ew9mZCA7bcixubC0liRAIWc82f/Euszl4YNsaKjFGSFcLsw/83u4gjMO1/fRPsriLZfKse2Ec5YEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+RyZAwStHH4TtTowam62FmCdYkqdJacuI0gCr7VusA=;
 b=EJ3mhZ7Akp8BUXXkdoolxYv9ihwWMdgJQaBF7f43QyxCtDXSLLe9ZUrzPVMwD3enoc7V/BjKhqbo7bjYNFHa0rb8I9Na0l48WdDbwO02FEh9Mmz9iI/7mdfWRmXTJlw0ymq/1+UDAYU+5gy6wIuC8M54tKYkGpjz2rW3SPkP8nL7ObzX0+sgK+euo27tdz9FOTecYo0pPyy7IAw5cj6gRm/CG4OYLSDtPcxUYAYjmxK+BcUyK2Nn3qUR9dA/dFCBo5EkI8olLKhybu166uo+Up2CtAAxFsXg+5xW6xUHeAkmTTfd84Ov+uZ4wHvBOYeYktGn/KA/JctGCwDDzujL9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+RyZAwStHH4TtTowam62FmCdYkqdJacuI0gCr7VusA=;
 b=MphdxETgY1zxSINx/4yfCYpnREfSoIGvCrYAjbKE/D32WuLxAWbeVqtejxAha5f1oUUBjtj14t9CqnMlPScHakK4XYf7E93c+y/U1gJFfYDPzux1lJMB/WRMEgUCW8BBbleucysMlT8+IZrrDRgzaBUltczlSViOYRT7O8H5jpM=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3640.namprd15.prod.outlook.com (52.132.229.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 15:01:30 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 15:01:30 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion][net v1 2/3] tipc: fix wrong socket reference
 counter after tipc_sk_timeout() returns
Thread-Index: AQHVUb4llLjXunu6GkCUYRPtAtryNab6vsAw
Date: Wed, 14 Aug 2019 15:01:30 +0000
Message-ID: <CH2PR15MB35755C6EAF28168560662BE29AAD0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
 <20190813100131.5987-3-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20190813100131.5987-3-tung.q.nguyen@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb7828d5-53a9-4dec-5abe-08d720c849ea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3640; 
x-ms-traffictypediagnostic: CH2PR15MB3640:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3640179932CD6DE34D96CD6B9AAD0@CH2PR15MB3640.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(13464003)(189003)(199004)(52536014)(476003)(6116002)(305945005)(2201001)(256004)(53936002)(2906002)(186003)(66066001)(74316002)(446003)(7736002)(25786009)(44832011)(6246003)(3846002)(71200400001)(71190400001)(66556008)(76116006)(64756008)(66446008)(66476007)(6436002)(229853002)(478600001)(33656002)(76176011)(102836004)(5660300002)(316002)(26005)(7696005)(6506007)(86362001)(66946007)(99286004)(8676002)(53546011)(110136005)(14454004)(81166006)(8936002)(11346002)(486006)(55016002)(81156014)(9686003)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3640;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: E7Fcq6mXHDkNtjG4XYozM0w/4lgiNE4dcyc9/Ygt4mL9K6VAg5ezobjbElTTzU6bARi0PFi8HjBXNHEM+6daoDr9VbSlZfEG7E777wOlEWsM9x4XUcjIEtYTcnzIc2jGvLGAQNQ37Jpj2qaq9aP8CTJTntci981CfJVJj3vKVwWr4i8RukVLEs1nLwLy1E+JO18WrHeDrfcp1WSGAhc7Wkhc6nx3RyC6XmrsfgHn1xtgmEmZjgmfIkWw/SmsOSsmBC+5+Mzj+eMdVOvzzBEmOcyYmM1R7MBnJIrF7lHfTqXeNRy8Kex8vXmVVPT4rco4b8Py+/pBg7xyvSONJZo0mxPKSjlYg7Y+zv8wBnO7v865LR9BynNXSzYI0FASBcmDoZ4IKSx4cMrygC7qEwL9c/tOMQcZCJpv1mY4NQjCweI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb7828d5-53a9-4dec-5abe-08d720c849ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 15:01:30.0408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qMXmF9P1sjc6KUROcS9Z6Gqs1b5yM1/qyjyPY/KmSz5W2H9qrabhoIqq2OpSoyMBWu9gd/h0KGbx4OViHQ/9Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3640
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hxv0S-003Yax-Pl
Subject: Re: [tipc-discussion] [net v1 2/3] tipc: fix wrong socket reference
 counter after tipc_sk_timeout() returns
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

Acked-by: Jon

> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 13-Aug-19 06:02
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [tipc-discussion][net v1 2/3] tipc: fix wrong socket reference counter
> after tipc_sk_timeout() returns
> 
> When tipc_sk_timeout() is executed but user space is grabbing ownership, this
> function rearms itself and returns. However, the socket reference counter is
> not reduced. This causes potential unexpected behavior.
> 
> This commit fixes it by calling sock_put() before tipc_sk_timeout() returns in
> the above-mentioned case.
> 
> Fixes: afe8792fec69 ("tipc: refactor function tipc_sk_timeout()")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/socket.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c index
> dcb8b6082757..9fd9a5727786 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2683,6 +2683,7 @@ static void tipc_sk_timeout(struct timer_list *t)
>  	if (sock_owned_by_user(sk)) {
>  		sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 20);
>  		bh_unlock_sock(sk);
> +		sock_put(sk);
>  		return;
>  	}
> 
> --
> 2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
