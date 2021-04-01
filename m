Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BBB350D7D
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Apr 2021 06:12:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lRogo-0007sc-5y; Thu, 01 Apr 2021 04:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lRogm-0007sU-3n
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Apr 2021 04:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AkrkSbpjQVErZajD/ivfEZxo2RDhWqtOQ9vorTHGz0c=; b=KCDIPlmNULbrmutB46eAEZEoAP
 uDUiAKD5C7cVFijja8GBm7aJ+by7eQjR1HZvH7W6rHFyfSXUG1uBGlEqzDcA+1/8lKcOFOV5m5B6d
 OdyANBipEj5N1oKJcfFA4Jt8wOMnvzRo0AiAttLbA1mJBzRcYx9c0EFBL//AlWAmTktw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AkrkSbpjQVErZajD/ivfEZxo2RDhWqtOQ9vorTHGz0c=; b=AnhJBNfzF9f2qV7fA8mHt3XD+m
 BpCTigltVk/qt+yaCxaCLFMzcqCVOv4MQKVfJbh/akJs2ADJ+w3cWUFbwU0Rm4swvBsacezgxMPdO
 7mQw0CVwlE6ZCygRA3+z5UcmnkZL7seE+WgwooFhrayK6ek2r2ieSyzREyF5UgC8p7xI=;
Received: from mail-eopbgr10135.outbound.protection.outlook.com
 ([40.107.1.135] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRogc-00082k-Cq
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Apr 2021 04:12:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exs/yNWqUO1Tes0BY4IOVlig2biphhb8pPPYonhXUeaPzOTNit7H+S2N65C5KnGy3eYnFYeJmIBnSYQOA93HzLRhkKLC+VlRa2+8FpGkyiJXiezlkbDJ1YvnTZCVnKQgUkqi7RH8iX/0omLNJGVWuE4HUwbav+arLMFvZRB5/1RyTo3ilenlGLy2+q7in8o9QjuGKoj791h20FWAcwWe5qi4SeTUUOwKGyxFVxx3nfLquYyAanWcK2+4paP9xZKfIpDycf43dWpPLcPuUVXMLDSLo6bHLIpy8xp/lK7vIqDfW694k+5f7zn7JMj4yFaBm9PxbOvjrfFom3bj7V23jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AkrkSbpjQVErZajD/ivfEZxo2RDhWqtOQ9vorTHGz0c=;
 b=GWnxWC3rtpTfM6WDZrFLbZyFCGhZINS5BsqndE0RdObj4XUrY4kPJVBfYNKyFCsFcT2sByBw5tIp4t/iudSvZgA2I6GCXZdjfvjmH03lPv0lw1cbO292g8YhZY9RlroLbq9Kc7pau4yfZ/r9DQaGJG5QO6BQL5txK+WzuvkmYD3oFNCRIJ/d2OBcWvQTJgV9bxckJLh8DB7qu5Gzx6wUFX0XNdIwPhr5ct3jnewx1WWuPxevIs6SVtksnrHj69HiRVrRJfkISsgpfkK5KJ5Is6jzzk93q4dwPFAuASixyUsmVoC91TpJQwSkyWRfqN++YSmNHUJP+RGvfEsYUazNfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AkrkSbpjQVErZajD/ivfEZxo2RDhWqtOQ9vorTHGz0c=;
 b=UGOlQ4D1h1C2rM0pW0OWA5FMwsXTwSaXsOeR+a/F/SfurnroDLINHKEoCmWG5DEgm+Gg5Y0HknNCnVbDqii1m+5aUEFkWI6Qrlo8tXBqgbY/7nCEm2PySjdpjM0VPUQBF2DvkaOM8AQ3WBGWcd6eQHkz3mfw+2KeRUTieRwJnbQ=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4926.eurprd05.prod.outlook.com (2603:10a6:803:60::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.26; Thu, 1 Apr
 2021 03:56:44 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Thu, 1 Apr 2021
 03:56:44 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 3/4] tipc: refactor function tipc_sk_anc_data_recv()
Thread-Index: AQHXIY9wo5FlZaFxQUCgkD20tdZyLaqfEjsg
Date: Thu, 1 Apr 2021 03:56:44 +0000
Message-ID: <VI1PR05MB4605F050DF98EA3DEDD3D230F17B9@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20210325155621.2055206-1-jmaloy@redhat.com>
 <20210325155621.2055206-4-jmaloy@redhat.com>
In-Reply-To: <20210325155621.2055206-4-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d42a737b-b5d9-4bcf-960f-08d8f4c22a52
x-ms-traffictypediagnostic: VI1PR05MB4926:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4926B9B2E0D544593A852ECEF17B9@VI1PR05MB4926.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BYlDwqeI/HPLzjRk3t7pnghz9dr2KMjrlc4+vtRlpY7UZJj2xK33i1aJDttP6R2NjDKIJ5Pf6Yx6KOCTbntA/6sSDcDH2SZ17+51bXqLS0N0XojRqTYQxrPCkwv0v5sdLzbdhZCqP4U/l8/qE+7Tk7cPxP0h5Gh5ZkN+Jr4FQE98/YH1vLCAyW0yqZ/H+FKj58fFdIQcUBAUE/MkpWgKzEhjp7R7cWKXUAmV8TFIWPeKyS3zq+FBQqrmURu2fIxovHF//VFi7P20QIO8AevCHZJHWhu7xRQuojEQXB2IgSznqq1QoIrzCjHdZCSsYJ1NjdgTEQfN6PTN9ChX+OnL9ZVXGaX0z46ipMhIcBICKMiELv9buEndD3CVI12wNEYldZUMTX3/Ddo3s2gZVwEb9/qs1X3QQnPkRCZZXKTsEFtBy1yVmAdo/uNC341s8DyrkWDKcDtSwULfdDOxo3J14zVeGiHDqaK8n+gY/m06yFD1eX1TOPQ69OXSzITA/UrGaK1zCezBuF2uoSesIrlsYLzMQV1faCTASsRtWH05kMgx7l1Js6LIbaSR0iAwLeETiBRSnAehz7L+32bROZPvmLTWgMPrwSgpjxwkfBIirYYBWyOOm9VgoZUQD1sldUv9aAWqUIb+Ba74svrYsgl/bbvzeO7ptYzjoSM0r+2YGGoCcMA4jzC/q+c+8rBO6axG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(396003)(366004)(39840400004)(76116006)(186003)(26005)(38100700001)(7696005)(55016002)(9686003)(110136005)(316002)(54906003)(71200400001)(86362001)(2906002)(4326008)(33656002)(64756008)(8936002)(8676002)(66476007)(66556008)(5660300002)(53546011)(66446008)(52536014)(478600001)(83380400001)(6506007)(66946007)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ZmGasndebQNtjYXtREKypOhOrkzXDzf/herL+969e2BD/2IVwTAIXLnzvPJS?=
 =?us-ascii?Q?qiso9OA/U52/5UVn9yFkz3OtZjkmsAlZW86ojcKbIfc7mXWtgYn22kBtgROF?=
 =?us-ascii?Q?tmyjxsLD2sEP/Ax92r+mQ9m3W7upQWLOgmgvl9Ex49r9ke8I2qhBqm1wua8a?=
 =?us-ascii?Q?/Nu87tK1xvgGhsN36+seeBaq3AADpmO3vXh4j3MB3EmYxTKub3AnCTd8JocG?=
 =?us-ascii?Q?ZSZifpZY6T9BnQIcJz5kHx9JqG0oN5mXbaY6QaowXtZPzxy2lCU5W75Qer8d?=
 =?us-ascii?Q?zPWwh8NtyrGQXlpg79K913fOfRl0idpn23P6wTjQI6ef0hU1QcxEkOJ6VscF?=
 =?us-ascii?Q?kgGUdXQkf8iw/jnpvO40xG1pqovdYV1hLdXuMNr1oZGV+LDSJQfupO59tXee?=
 =?us-ascii?Q?0e+gNB0VYii/ZAyO4PSm0xvEBKRG1+9V/xIbdG0p6Xq/+YdFzRFdZrEJTSj5?=
 =?us-ascii?Q?aahf0VQJMZjp2HjT7BFb+cDkOvH/oEsQnn8929F3VX6lYfoAGb4ioDXyqqt6?=
 =?us-ascii?Q?gP92NiJ8I4r4GfHUIdS8MhmLT4PKYWfmMSnwpHJk4hodVgk76VbDoEMV4I+f?=
 =?us-ascii?Q?re24MiBXRPZgwfUT1mBm7DMMYdAiGMf+ReTfnfqu5/OMLDHb2CE/UsEOsZVy?=
 =?us-ascii?Q?4Dw/kGqE16TJ+av72kmG6QVAERPE7moYPKhGg2yV/WzoxlvG46mkWT+VGJjN?=
 =?us-ascii?Q?7I3fhiX1r2emL7NKie6vgBFzUgbuxasURIH0nhwVbupjXK3w7ffks5U4qP8K?=
 =?us-ascii?Q?OkUs8nsE7UvDOH7Kc6KHpMEQU5M72FVP8VLHL+/PMR0H8jmJ2qMz4B5myUYE?=
 =?us-ascii?Q?0gnO69qrKHIOCnfZv367C99GsjrsKUuLMUavf4UdjRz1F4zytuZUNA09nbpI?=
 =?us-ascii?Q?7/d58y+4vwee5xLMy1sY+gw9sP/iQN6KuT6TUAjFCcJC6Nvhn+c+ZaGhdzRh?=
 =?us-ascii?Q?DJTn4nO+8DAby2ToapmF3ZO83We/oeYAiuPiyH2vUcY9lP+IZS0cc21A+eBA?=
 =?us-ascii?Q?wTcnzKXkohoYGVyGlKI5Bc/Z+jQQ11C7he8JlVG1SKIu0E/01XHedbxTAx/R?=
 =?us-ascii?Q?FtlIkIdJo+bHn7YS3fTOmlpCLfVFLpvWMe7VjS6JzvhBbA0/vidxcg5VxKtg?=
 =?us-ascii?Q?1nzhCR+tun5v+8faR5QS+3mOWFx/cWRieHEo3GVTmEs2WD6zpxD9C6MUCwrp?=
 =?us-ascii?Q?G+OZZd5F+WcNADWDQvOf6Ng9J6mt79k1Xoxy4Cr5jbhRWT+7CWGre6A58MDN?=
 =?us-ascii?Q?Lmywhri7EeBGGdlJNiQfnXUnvXTX4BVXx0k9XhWdjwiRsUoIQDrTPBdyrAZD?=
 =?us-ascii?Q?6lw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d42a737b-b5d9-4bcf-960f-08d8f4c22a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 03:56:44.2344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /mnILLc0RpHm0l6O5g3DVuFvTCTO8ZucR+TF/qBpft0Dkbo3c/98eq/EF/Z+hrkoRsTaDXs0LKwrPOnoxvLSW3mFbAn6H/biXPX1Vlmd0rY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4926
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.135 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lRogc-00082k-Cq
Subject: Re: [tipc-discussion] [net-next 3/4] tipc: refactor function
 tipc_sk_anc_data_recv()
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


> -----Original Message-----
> From: jmaloy@redhat.com <jmaloy@redhat.com>
> Sent: Thursday, March 25, 2021 10:56 PM
> To: tipc-discussion@lists.sourceforge.net
> Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; lxin@redhat.com; ying.xue@windriver.com;
> parthasarathy.bhuvaragan@gmail.com
> Subject: [net-next 3/4] tipc: refactor function tipc_sk_anc_data_recv()
> 
> From: Jon Maloy <jmaloy@redhat.com>
> 
> We refactor tipc_sk_anc_data_recv() to make it slighltly more
> comprehensible, but also to facilitate application of some additions
> to the code in a future commit.
> 
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/socket.c | 85 +++++++++++++++++++++--------------------------
>  1 file changed, 38 insertions(+), 47 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 12a97755bc80..358d1f2494a7 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1730,67 +1730,58 @@ static void tipc_sk_set_orig_addr(struct msghdr *m, struct sk_buff *skb)
>  static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
>  				 struct tipc_sock *tsk)
>  {
> -	struct tipc_msg *msg;
> -	u32 anc_data[3];
> -	u32 err;
> -	u32 dest_type;
> -	int has_name;
> -	int res;
> +	struct tipc_msg *hdr;
> +	bool has_addr;
> +	int data[12];

Potential memory leak here!

> +	int dlen, rc;
> 
>  	if (likely(m->msg_controllen == 0))
>  		return 0;
> -	msg = buf_msg(skb);
> 
> -	/* Optionally capture errored message object(s) */
> -	err = msg ? msg_errcode(msg) : 0;
> -	if (unlikely(err)) {
> -		anc_data[0] = err;
> -		anc_data[1] = msg_data_sz(msg);
> -		res = put_cmsg(m, SOL_TIPC, TIPC_ERRINFO, 8, anc_data);
> -		if (res)
> -			return res;
> -		if (anc_data[1]) {
> -			if (skb_linearize(skb))
> -				return -ENOMEM;
> -			msg = buf_msg(skb);
> -			res = put_cmsg(m, SOL_TIPC, TIPC_RETDATA, anc_data[1],
> -				       msg_data(msg));
> -			if (res)
> -				return res;
> -		}
> +	hdr = buf_msg(skb);
> +	dlen = msg_data_sz(hdr);
> +
> +	/* Capture errored message object, if any */
> +	if (msg_errcode(hdr)) {
> +		if (skb_linearize(skb))
> +			return -ENOMEM;
> +		hdr = buf_msg(skb);
> +		data[0] = msg_errcode(hdr);
> +		data[1] = dlen;
> +		rc = put_cmsg(m, SOL_TIPC, TIPC_ERRINFO, 8, data);
> +		if (rc || !dlen)
> +			return rc;
> +		rc = put_cmsg(m, SOL_TIPC, TIPC_RETDATA, dlen, msg_data(hdr));
> +		if (rc)
> +			return rc;
>  	}
> 
> -	/* Optionally capture message destination object */
> -	dest_type = msg ? msg_type(msg) : TIPC_DIRECT_MSG;
> -	switch (dest_type) {
> +	/* Capture TIPC_SERVICE_ADDR/RANGE destination address, if any */
> +	switch (msg_type(hdr)) {
>  	case TIPC_NAMED_MSG:
> -		has_name = 1;
> -		anc_data[0] = msg_nametype(msg);
> -		anc_data[1] = msg_namelower(msg);
> -		anc_data[2] = msg_namelower(msg);
> +		has_addr = true;
> +		data[0] = msg_nametype(hdr);
> +		data[1] = msg_namelower(hdr);
> +		data[2] = data[1];
>  		break;
>  	case TIPC_MCAST_MSG:
> -		has_name = 1;
> -		anc_data[0] = msg_nametype(msg);
> -		anc_data[1] = msg_namelower(msg);
> -		anc_data[2] = msg_nameupper(msg);
> +		has_addr = true;
> +		data[0] = msg_nametype(hdr);
> +		data[1] = msg_namelower(hdr);
> +		data[2] = msg_nameupper(hdr);
>  		break;
>  	case TIPC_CONN_MSG:
> -		has_name = !!tsk->conn_addrtype;
> -		anc_data[0] = msg_nametype(&tsk->phdr);
> -		anc_data[1] = msg_nameinst(&tsk->phdr);
> -		anc_data[2] = anc_data[1];
> +		has_addr = !!tsk->conn_addrtype;
> +		data[0] = msg_nametype(&tsk->phdr);
> +		data[1] = msg_nameinst(&tsk->phdr);
> +		data[2] = data[1];
>  		break;
>  	default:
> -		has_name = 0;
> -	}
> -	if (has_name) {
> -		res = put_cmsg(m, SOL_TIPC, TIPC_DESTNAME, 12, anc_data);
> -		if (res)
> -			return res;
> +		has_addr = false;
>  	}
> -
> -	return 0;
> +	if (!has_addr)
> +		return 0;
> +	return put_cmsg(m, SOL_TIPC, TIPC_DESTNAME, 12, data);
>  }
> 
>  static struct sk_buff *tipc_sk_build_ack(struct tipc_sock *tsk)
> --
> 2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
