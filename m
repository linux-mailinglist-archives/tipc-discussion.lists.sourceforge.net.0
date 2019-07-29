Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F97948A
	for <lists+tipc-discussion@lfdr.de>; Mon, 29 Jul 2019 21:33:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsBOD-00021K-Cp; Mon, 29 Jul 2019 19:32:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hsBOC-00021A-54
 for tipc-discussion@lists.sourceforge.net; Mon, 29 Jul 2019 19:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FYO7QfDzmJgQf7iqdsDcJImnizrwB72dHe9o5gZftu8=; b=gusqqEnLGB3zdwddp5G0a92fmr
 cjpt0d2R213wpW9Qlpx64mA0CDDUD88l6dHeepaXE75Ac55aAlFN68vLBVbbE2g/jTqSSneEqK+u/
 4DjFvxPyAujIRQ1YIc8oWtCBhZTqN7hCS0MotGrn5mPr2toeRVe9SU+M6ubYWieROOAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FYO7QfDzmJgQf7iqdsDcJImnizrwB72dHe9o5gZftu8=; b=nC7/NGUH8dLWz+bUk4FMivLQVn
 HZXI9AVECNTzrpCFVXeAVHfabtvmXjRobCfTxPwwDDqpGRsex+yJmSLK5pYaXB7tg5l/qXC/4i1/s
 oEsBPIu+6nz+KoWWTFgp7T8/mUNVcMY3p367iBajshlymtfc4wqAdHcnJxY4yUr6CEyw=;
Received: from mail-eopbgr790075.outbound.protection.outlook.com
 ([40.107.79.75] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hsBO5-0041D0-Sg
 for tipc-discussion@lists.sourceforge.net; Mon, 29 Jul 2019 19:32:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwYSWZNm5e5YLWZ5xUgOlm6tppQ0jpclR8uVJ5JVctaOk/s0rGsyjAmC3+XDOfnf3SQoGvIbeaBDIhfFIUk35TxtMJghmeCdrdKJPG4ntc0y++DpkletLAxPlFVdyBgDYMVW4DDXDwiAFz/pOhiUOIF7fZE4rUfdKCjEgeRZBig4Ve67nPCUX6pRaSMxReVZPRcR+hPF5RbFwb2vdVv3jQrJgoN6tn2F2PMVcZwzlS/ARi8HHNmoGgQ8k2aDxkB9HsJ0KKC9VmEw0//LkJYWEHw432WlDIHcJ1vnbU5PxLM0ZB2S1imyVuU218wjKUMVtbxF8hmo5WAM7Wo7BZlNkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FYO7QfDzmJgQf7iqdsDcJImnizrwB72dHe9o5gZftu8=;
 b=kynSw/yYXEKKsDedRb+qgU9kBoS0b4DlKTWw8JwxhqbHrdbLXiURz6yY3RBlM9G5qULT80VMEWkf4l1KI4XWerlnXEsqWEa48Rs6b6u2rjiTzGf4XJMG5t3bWmcX5Bjgc8HCpWADb4GFkzAeUo6jzO0nAsKTAruSTIgu3i6ZXb0cywqaa1o7R6exXO76HIk/jgmFutVgQBNfmw6v9IWYC8wFeyoIjiWAEFvOig9bDTAGwETvLrUR5SDk47i8o//rH42DOYbED1sSCyO4fa8H9DMI5okPuimKLJ6fZ6In4kE0ihi5jdg2v1ZXO8vsKjnQ3/sza6fEdO+VFcbo/F8lhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FYO7QfDzmJgQf7iqdsDcJImnizrwB72dHe9o5gZftu8=;
 b=fI4RtWvdMgr4EwDXQFSV7rtFrqHZ8ttuk0mTUQwEPvdrCkl8o8V0jKtvgsUCKfxi/nNSeev4ET7MaX3MsUPaHsoM/L6Y+k9w59sjSfSdaDGgg89l14qs91ZdUS2AqTEI3OGZC/FNwnnt4+zWAmo3iYMr9WUDGA7qu8QOKUByEs4=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3589.namprd15.prod.outlook.com (52.132.228.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Mon, 29 Jul 2019 19:32:40 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 19:32:40 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: "zhe.he@windriver.com" <zhe.he@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [tipc-tipcutils][PATCH] test: ptts: Set recv
 buffer size too max to receive as many packets as possible
Thread-Index: AQHVQTfiiOukjb8C80qXI/lhQH7UEKbiBeKg
Date: Mon, 29 Jul 2019 19:32:40 +0000
Message-ID: <CH2PR15MB3575EB988241E6F8672787AC9ADD0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1563873538-193562-1-git-send-email-zhe.he@windriver.com>
In-Reply-To: <1563873538-193562-1-git-send-email-zhe.he@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcb320ff-38f9-4f24-8f8e-08d7145b855b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3589; 
x-ms-traffictypediagnostic: CH2PR15MB3589:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR15MB35897F70AAFFB85BE59B00119ADD0@CH2PR15MB3589.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(13464003)(81156014)(66946007)(81166006)(66476007)(25786009)(6246003)(86362001)(7736002)(66556008)(64756008)(8676002)(14454004)(966005)(14444005)(76116006)(66446008)(3846002)(6116002)(66066001)(74316002)(305945005)(68736007)(256004)(478600001)(33656002)(6306002)(53936002)(99286004)(6436002)(71190400001)(110136005)(6506007)(5660300002)(102836004)(53546011)(71200400001)(55016002)(9686003)(44832011)(446003)(229853002)(52536014)(2906002)(7696005)(486006)(316002)(76176011)(2501003)(11346002)(476003)(26005)(186003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3589;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xDA4ujXeArPxphrWS5P5BeZpHqjTnA2ua1TxOJsrF6t9TUCYp5OGPBxwDoOztVZ/5/UFWmhgm77b7rIpaOlfOqfVmIyVZBxPEjKNf4bzSSiT/r4SuJp5Cdu8XSZ9CnQBFs2Owx2twQOa07Weo3Vd0Ge3ucCLh1aSGOuPKt2CWO/gT4CijHM7xgdIOEzS4hrlQfVuSyXlGLgGwMU23eEGoxGWLV3BF4L8q3UmiOh6OsBpurb2k0piF4rNW41mJIOi64mR68DKJsDlMxccPU8ALJsNwoRXX8ibtGFNwL33jEaZJCqPCFEJENZYElpSNCK3VZmRtc0yolv4EfVDjDnSCUL30rFwY9Mr2wZT2xkc1Ppgt73lx/tY23NdJDIEbZFAtCqbhJU4VRLaK5eg0hAKNQe7B6c9WcHLvcUg7hhESdI=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb320ff-38f9-4f24-8f8e-08d7145b855b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 19:32:40.6765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3589
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.79.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hsBO5-0041D0-Sg
Subject: Re: [tipc-discussion] [tipc-tipcutils][PATCH] test: ptts: Set recv
 buffer size too max to receive as many packets as possible
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

Hi Zhe,
This looks ok, but you should post this as a merge request at sourceforge.
Then I or Ying can apply it.

BR
///jon

> -----Original Message-----
> From: zhe.he@windriver.com <zhe.he@windriver.com>
> Sent: 23-Jul-19 05:19
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [tipc-tipcutils][PATCH] test: ptts: Set recv buffer size
> too max to receive as many packets as possible
> 
> From: He Zhe <zhe.he@windriver.com>
> 
> Flooding multicast may make the rcv buffer overrun and is considered
> premature messages later and thus cause the following error.
> 
> "Ignoring premature msg 16, currently handling 12"
> 
> This patch sets SO_RCVBUF the of socket to max int value to receive as many
> packets as possible, and give a hint to user when possible overrun occurs. Note
> that the value of SO_RCVBUF will be limited up to min(INT_MAX/2,
> sysctl_rmem_max) in kernel.
> 
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  test/ptts/tipc_ts_server.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/test/ptts/tipc_ts_server.c b/test/ptts/tipc_ts_server.c index
> a286daa..cc69e6e 100644
> --- a/test/ptts/tipc_ts_server.c
> +++ b/test/ptts/tipc_ts_server.c
> @@ -641,8 +641,9 @@ void server_mcast
>  				if (rc < 0)
>  					err("multicast message not received");
>  				if (msgno != *(int*) buf) {
> -					dbg1("Ignoring premature msg %u, currently
> handling %u\n",
> -					       *(int*)buf, msgno);
> +					dbg1("Ignoring premature msg %u, currently
> handling %u\n"
> +                                             "You can enlarge /proc/sys/net/core/rmem_max and
> try again\n",
> +                                             *(int*)buf, msgno);
>  					continue;
>  				}
>  				rc = recvfrom(sd[i], buf, expected_szs[numSubTest],
> @@ -687,8 +688,21 @@ void server_test_multicast(void)
>  	FD_ZERO(&readfds);
> 
>  	for (i = 0; i < TIPC_MCAST_SOCKETS; i++) {
> +		int optval = (int)(~0U >> 1);
> +		socklen_t optlen = sizeof(optval);
> +		int rc = 0;
> +
>  		sd[i] = createSocketTIPC (SOCK_RDM);
>  		FD_SET(sd[i], &readfds);
> +
> +		/*
> +                 * Flooding multicast may make the rcv buffer overrun and is
> considered premature msg later.
> +                 * Set SO_RCVBUF to max int value to receive as many as possible.
> +                 * Note that it will be limited up to min(INT_MAX/2,
> sysctl_rmem_max) in kernel.
> +                 */
> +		rc = setsockopt(sd[i], SOL_SOCKET, SO_RCVBUF, (const
> char*)&optval, optlen);
> +		if(rc != 0)
> +			strerror(errno);
>  	}
> 
>  	server_bindMulticast(  0,  99, sd[0]);
> --
> 2.7.4
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
