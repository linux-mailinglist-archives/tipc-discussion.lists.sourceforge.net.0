Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E691121F6
	for <lists+tipc-discussion@lfdr.de>; Wed,  4 Dec 2019 05:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2A/joswZSX0lM6d5Gw+DCFiIeWNSQD0MdBshTcTNMOE=; b=JqRthaUou8P/1iZ6/k8oJJzy4
	APVqf6TK+v7uZCMgJGpFn7aX2/t/w8hy1ed2O1n4JXJlMDUTwFdBqJUO47N5Pml3Zh1dIozLbdVAE
	vaYmdF2/UIq8YfNHxSwisGW2G2wkbFzTKhphmld6DPWKef5uh88++v5fC5Htds5OT9jiE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1icLtd-000231-SC; Wed, 04 Dec 2019 04:04:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1icLtc-00022o-OR
 for tipc-discussion@lists.sourceforge.net; Wed, 04 Dec 2019 04:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TdOMLGQeYPwvz+jCcKTfNi9C1uFHaIf2R2TCuNQwTW4=; b=QCrO3v0TkNGG+recPsDOIr9uA9
 PsyRxHYZwfPPRgX/WLt6kZNskEtrL1zTueTLT3m1/JzrYAY+L41tbd+3VOTr8VjOu0Sa3MEQWhyG8
 tWAQO8ngXTMIJtdaGyK8L5wquzVZUVCaKn6OwyhtemY8EvrlOBjnz3Zo2ldH42tSwHrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TdOMLGQeYPwvz+jCcKTfNi9C1uFHaIf2R2TCuNQwTW4=; b=d43T6h/XX+g67R1LgyULdMvSX4
 JHNJnZ0fz7qOLcFJHdu3iCzX6IQFELamOf0b7WYZOkXtplpqw0vhqKEJb0aP40rQuC6+sewUH+AZ3
 2/u/755L7claw61JBEQib4R6nZbgyzCnqje4qf2mMmUvZ4LzP40ht93yQpr2U4iUbJcw=;
Received: from mail-eopbgr820079.outbound.protection.outlook.com
 ([40.107.82.79] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1icLtU-006cYr-Eb
 for tipc-discussion@lists.sourceforge.net; Wed, 04 Dec 2019 04:04:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRo8qaFUYLMIuXwP9iUSHMBSUP7RU2HD6OhOQU3SQdBRRuXlHPzUwjPoQ+1YvwDmZ+LSZ7ggXQ8BkytZUNseHB38AtjZjNa5xb14dmvnBNNdVb331Dr9AEqIGzEwNDL+3VxWGObQ7tbpfTipsIGwfumXbkbUvjIYJ8r/zfFYzq9vasUsn5fZcJ2NFq5LJKrXsX7HFoyM40TTenTr3mQGW9W4upvS4UaFVIZQzJ+0yriNQ6gLJcWOG/s3a1WAwv8dQtsC+bpqJzY+asilsMasuFOn+P78rde/TVdd+A8GEW38DPKhuqowVzXdmyJZ2IC9XiyqsBpK8ZcldI48h+8o1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TdOMLGQeYPwvz+jCcKTfNi9C1uFHaIf2R2TCuNQwTW4=;
 b=Sk5s1+AFKtlqmv9Qhqxzex+50qhembB5aiD5FNrGEdPEiLMHUyojJdvEtYCq+SMBRne3KNn0y2QgtCN7rWgfElvEldV0bGn+Tv4qNUtMq+sHi2ofGw37gW5S5DQWkoNqAhg8EtNCfUWfh13cWeQxixYZwjgeHPYjCwcTYFJQffN8nldH5VTvQJVQ8LqgfpkN95RPeC8fWqPohosp20lRGjQB+w+UBDML3ZVnA1xMP8hwr1Q3jw7ETL3YjnBhhhC7uNe+CWkWAS6J46DT9sQ81wgqZswK5TAa7XS4lj1i2aQJhIbtsx3TO/JBZvMiwyewee4BMYFr8vEUXNdYALh1Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TdOMLGQeYPwvz+jCcKTfNi9C1uFHaIf2R2TCuNQwTW4=;
 b=B9wg/zOWNG5a8+eWUzC2EaiS1zKXaVfW5LQrbX6aRZ3AB28BSwAnrpcYtUfzIy4yAE6p/zK/XisSacpVCWg/T6v24is/7eXi/8Hj8/HVjrgbiT4D6ykvgLf1QLwwVLwBcjEwWjdUaW9JNqiOV7Tn4E+ZYKgUfoIbQ0Pk0gLTg1k=
Received: from CY4PR15MB1317.namprd15.prod.outlook.com (10.172.178.136) by
 CY4PR15MB1687.namprd15.prod.outlook.com (10.175.119.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Wed, 4 Dec 2019 04:03:55 +0000
Received: from CY4PR15MB1317.namprd15.prod.outlook.com
 ([fe80::a8c2:2d54:b0d8:994d]) by CY4PR15MB1317.namprd15.prod.outlook.com
 ([fe80::a8c2:2d54:b0d8:994d%10]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 04:03:54 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC] tipc: fix potential hanging after b/rcast changing
Thread-Index: AQHVpA8Cu0JB1Pi4bkKrEr9YYVEioaepZw0g
Date: Wed, 4 Dec 2019 04:03:54 +0000
Message-ID: <CY4PR15MB1317C117E3590997202633769A5D0@CY4PR15MB1317.namprd15.prod.outlook.com>
References: <20191126040654.4028-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191126040654.4028-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [107.1.192.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccbedf0c-c6bb-425c-9836-08d7786efae7
x-ms-traffictypediagnostic: CY4PR15MB1687:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CY4PR15MB1687B135778AC9E8989655429A5D0@CY4PR15MB1687.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(366004)(13464003)(189003)(199004)(66476007)(3846002)(66556008)(8936002)(25786009)(229853002)(33656002)(6116002)(66446008)(256004)(316002)(110136005)(86362001)(2501003)(2201001)(9686003)(478600001)(71200400001)(6436002)(81166006)(5660300002)(8676002)(74316002)(55016002)(6506007)(53546011)(102836004)(305945005)(99286004)(2906002)(71190400001)(7696005)(52536014)(76176011)(7736002)(64756008)(14454004)(446003)(76116006)(11346002)(81156014)(26005)(44832011)(186003)(6246003)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1687;
 H:CY4PR15MB1317.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +U2NOY5kC8wf/qfMR59IVn8WLGuyyg8MRnXwS2LwAWgeTWwrhzDFCBArV3DR0lYaT+K5DnNLUxlnbWBeacpAYIE18IswtHMBkpGwL37L4hkoax7Hy6ZMY0rOENqGcicFPnXlHpFU6yiX8imwFkNM7djYfEKT+OvP8AOQBdbnPp+FY5R+qiYJbiARnF2xJbFkyJrxaXkAoQDFJzxeTh9dcynIh8MNmfHr4V5T3EIlPmctW/h3Alt8I55aSSFStoOfq5zbPbGU4Po4d+G3Evm9Ap68jlYRKkCmGHA7y6gbUTZ7Vv7t8bjgpBVX/18IpLYfUA2qLWwn5LH7dBf8A5x3drFsVsuDM4TZAomOHYP3h5ucEAkRLCQO+fKs1qwNEnYCSqifxw/DLZj7j7rMwGFDHp030SSvSTq317O65ZOIyWkefNYxEBNNzZmG8THCR5vPu4nn0pFjoC6Y1btAPhUfgMndRC7m0ZuCNFC+7dCEuIjJinUBAtePmPj3G7d/FPYO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccbedf0c-c6bb-425c-9836-08d7786efae7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 04:03:54.1084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nAB/y7JHCJcHek5YZx8e7KeFMPSQDwUZoUc/8O9Kuwxf2vZCuEYg4l4kMPDA7+7qaiNO+lbuHNHBkCuRM2FirQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1687
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1icLtU-006cYr-Eb
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: fix potential hanging after
 b/rcast changing
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

A little ugly, but I have no better idea at the moment.
Acked-by: Jon



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 25-Nov-19 23:07
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [PATCH RFC] tipc: fix potential hanging after b/rcast changing
> 
> In commit c55c8edafa91 ("tipc: smooth change between replicast and
> broadcast"), we allow instant switching between replicast and broadcast
> by sending a dummy 'SYN' packet on the last used link to synchronize
> packets on the links. The 'SYN' message is an object of link congestion
> also, so if that happens, a 'SOCK_WAKEUP' will be scheduled to be sent
> back to the socket...
> However, in that commit, we simply use the same socket 'cong_link_cnt'
> counter for both the 'SYN' & normal payload message sending. Therefore,
> if both the replicast & broadcast links are congested, the counter will
> be not updated correctly but overwritten by the latter congestion.
> Later on, when the 'SOCK_WAKEUP' messages are processed, the counter is
> reduced one by one and eventually overflowed. Consequently, further
> activities on the socket will only wait for the false congestion signal
> to disappear but never been met.
> 
> Because sending the 'SYN' message is vital for the mechanism, it should
> be done anyway. This commit fixes the issue by marking the message with
> an error code e.g. 'TIPC_ERR_NO_PORT', so its sending should not face a
> link congestion, there is no need to touch the socket 'cong_link_cnt'
> either. In addition, in the event of any error (e.g. -ENOBUFS), we will
> purge the entire payload message queue and make a return immediately.
> 
> Fixes: c55c8edafa91 ("tipc: smooth change between replicast and broadcast")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/bcast.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 55aeba681cf4..656ebc79c64e 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -305,17 +305,17 @@ static int tipc_rcast_xmit(struct net *net, struct sk_buff_head *pkts,
>   * @skb: socket buffer to copy
>   * @method: send method to be used
>   * @dests: destination nodes for message.
> - * @cong_link_cnt: returns number of encountered congested destination links
>   * Returns 0 if success, otherwise errno
>   */
>  static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
>  				struct tipc_mc_method *method,
> -				struct tipc_nlist *dests,
> -				u16 *cong_link_cnt)
> +				struct tipc_nlist *dests)
>  {
>  	struct tipc_msg *hdr, *_hdr;
>  	struct sk_buff_head tmpq;
>  	struct sk_buff *_skb;
> +	u16 cong_link_cnt;
> +	int rc = 0;
> 
>  	/* Is a cluster supporting with new capabilities ? */
>  	if (!(tipc_net(net)->capabilities & TIPC_MCAST_RBCTL))
> @@ -343,18 +343,19 @@ static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
>  	_hdr = buf_msg(_skb);
>  	msg_set_size(_hdr, MCAST_H_SIZE);
>  	msg_set_is_rcast(_hdr, !msg_is_rcast(hdr));
> +	msg_set_errcode(_hdr, TIPC_ERR_NO_PORT);
> 
>  	__skb_queue_head_init(&tmpq);
>  	__skb_queue_tail(&tmpq, _skb);
>  	if (method->rcast)
> -		tipc_bcast_xmit(net, &tmpq, cong_link_cnt);
> +		rc = tipc_bcast_xmit(net, &tmpq, &cong_link_cnt);
>  	else
> -		tipc_rcast_xmit(net, &tmpq, dests, cong_link_cnt);
> +		rc = tipc_rcast_xmit(net, &tmpq, dests, &cong_link_cnt);
> 
>  	/* This queue should normally be empty by now */
>  	__skb_queue_purge(&tmpq);
> 
> -	return 0;
> +	return rc;
>  }
> 
>  /* tipc_mcast_xmit - deliver message to indicated destination nodes
> @@ -396,9 +397,14 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
>  		msg_set_is_rcast(hdr, method->rcast);
> 
>  		/* Switch method ? */
> -		if (rcast != method->rcast)
> -			tipc_mcast_send_sync(net, skb, method,
> -					     dests, cong_link_cnt);
> +		if (rcast != method->rcast) {
> +			rc = tipc_mcast_send_sync(net, skb, method, dests);
> +			if (unlikely(rc)) {
> +				pr_err("Unable to send SYN: method %d, rc %d\n",
> +				       rcast, rc);
> +				goto exit;
> +			}
> +		}
> 
>  		if (method->rcast)
>  			rc = tipc_rcast_xmit(net, pkts, dests, cong_link_cnt);
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
