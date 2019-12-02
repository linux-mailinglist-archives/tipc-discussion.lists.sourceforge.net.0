Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C57A10F13C
	for <lists+tipc-discussion@lfdr.de>; Mon,  2 Dec 2019 21:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kl1VTFp3XW4Nu4LctliPlozcz8hfs5rRynf1VYarzh4=; b=PsLE9RMFItvA5sH6g023CeUf5
	84eEqOcddB8krv7ZYoX90bSG8Mee9mOlTroTd4gfpqcWogREWormjuuyV1OQYzKFBLPXalq7rLC2o
	hmd9hrVm5RgCgEeaCoZIuVqC+02hjplV6J4bSex8rMmB1ckgmLcJUfSOsASvIaKqEJv/s=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ibrs8-0004Ij-JG; Mon, 02 Dec 2019 20:00:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ibrs6-0004IS-BO
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 20:00:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YaIKmpzKAIPqn9b9a7oW42ApbTNuCO8lpihE13uTdWQ=; b=P/9/Y5bgUhfRF3MoVvRfbd6bI5
 6CvjnBz43DQXV4MqW3yeFegA6uAAmF237Q6etcFEylqHAVHbQ6CjrWuSw348vUwf2hF7qi97NrpQK
 XG/F3Ycpcqx43jRH4UXdxmihzmKIW2SJqg5EFEWsq0ObKKE1nXMK/aRN9ry6IKqtNE+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YaIKmpzKAIPqn9b9a7oW42ApbTNuCO8lpihE13uTdWQ=; b=RiT8rrKWrC6hJ7PWgs3MfbFKVO
 CRNa4W8qtS3qsFpbYciGBsQYYgGzSgqN2hsXQickc2u9kWrJtr396wpS7fie45SyHmfHDaBYMqJMV
 uQCqFameJs6WwA+ze1q1kciHKReyCDSZXkT0ipYJXHOvxxlXPOEC26X7yA7NNs08SXMw=;
Received: from mail-eopbgr720055.outbound.protection.outlook.com
 ([40.107.72.55] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ibrs0-004WYZ-GW
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 20:00:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXqXIh/oxROzlmf8sr8HNtwBzmbJruJDvi1ys6AeFj8TpFBdZmFX6KcrrjofvdBA6PMH8HgblSGtNEnJXa+IRLOni6sX64D1f0koyZB9jW0jVotrojESvjvIvBVmjWsUcet+wRtzUEA+eXfcj9p/+vMStw36pJ4lRqkKfgGwgsDYwjcGwf5AcoxZFWCulviJkwvJbjsa1eChuM+thpx4IeLGjjBBc2vdrOX/GNFu+aNRoYA/zR5GEKpbg1u6g1uBd8sRGCXniLDju2K58+PD6ziiuhdAKBohTZtWjvHC+7wfFH+gayABRna0VUWpRS+pmf5JNEM/5F+7luk9qAghUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaIKmpzKAIPqn9b9a7oW42ApbTNuCO8lpihE13uTdWQ=;
 b=ZBPP7G+Q21oDu2xWJOii0nPj836l6lkNdjy+Q+VNC+/OAkndjMwwpAf40/gwKplnAhX6Sv7u/AiHRuZn22E9PoLMe+PgEi2b1nrPAn1lVFQZa2WrltIcx/CWzx9Nl8JajmpY6/gi2oRlzTGfwZlgz20Yo/RYxBnpsD8cJDqQpKu+i/qBVLhSPIFABzjzcYSgSJmfSP1ckGOPNGGgvZfR5GtuxzzCqj+xLKB8MqhaE1GyG0MsXOi06eJ464TwkaZpNLJFYQZvV8yH0MclHTzpRf2t73rh4h+ioXlkD/K6TBD931UE3zHroavprSeFIA4su+7YWfwwx+AI/7YMkQxInA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaIKmpzKAIPqn9b9a7oW42ApbTNuCO8lpihE13uTdWQ=;
 b=Yd+IECv8yvvQHB1OrMNjliFqfwYcjJ9P8N5X2Ad/MakhNQGVTW3N2cszArM1sw02JJqXlTvMGOg06D37RVCDcnpQv7SSFC0e5K1FZqkhHJ+LO/15IjPE85Z7P+IAySpTXbpNxsIDXIAhhEVP+z8Hk+Fp3M1Z8GH2QuqYrXIQ9m0=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3717.namprd15.prod.outlook.com (52.132.229.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 20:00:24 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 20:00:24 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC] tipc: fix retrans failure due to wrong destination
Thread-Index: AQHVp2ehUtp7CjPQ90aINCqByzj1JqenR2VA
Date: Mon, 2 Dec 2019 20:00:24 +0000
Message-ID: <CH2PR15MB3575924E0503F53687EC83299A430@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191130101849.28867-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191130101849.28867-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92b6086e-d65c-43bd-b667-08d77762452b
x-ms-traffictypediagnostic: CH2PR15MB3717:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3717AFE7F5D7ED30A85502AD9A430@CH2PR15MB3717.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(346002)(376002)(199004)(189003)(13464003)(316002)(229853002)(66946007)(66446008)(64756008)(66556008)(66476007)(76116006)(53546011)(33656002)(74316002)(305945005)(3846002)(7696005)(8676002)(81156014)(2501003)(14444005)(256004)(71190400001)(2201001)(71200400001)(86362001)(66066001)(6116002)(7736002)(2906002)(5660300002)(14454004)(6246003)(52536014)(76176011)(81166006)(8936002)(9686003)(6436002)(478600001)(446003)(11346002)(25786009)(44832011)(186003)(102836004)(99286004)(55016002)(110136005)(26005)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3717;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 60zCNVCmLLwsfjqO1vLrQqFqcyw1hJW8xw7jshIzdCeExdvXjUx5zlmvQ0xdV1+P+vyY3VIcl+Zb+1n1wmwpt91xHW5M9XcZ0qThQf7AcJ7Xnp08Sm9UNac3Cd82ldNVLJ0q3pemGP5ZObTxEFkZxZbb9fJ+JK7v2ueKveRWTbdeCiE7xS34dPHkV5f5ySrzHQ3tLvMIkX8ErgVVhddXTRDbCO692LEKwVjwO7r6VQ2NaCZ9zC77czN7IhCPL8qXoejs33BtPsgTq5YCnGd7Eo1PhY1CXZqeM1hMpvHtUN8mhglfI43uLollZa9Um5iT0JoExd/80y+PT2DgYkvHPN7yo/MGXBxRr39+YYtEghfXRJxu29W2YGiHZLiHSzhnYMLjphnLlVXOmMiTlcjF8P77T5FVO+9M9XyyCq7BkgYkVFdxmYZfw9KxEt2xC4E/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b6086e-d65c-43bd-b667-08d77762452b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 20:00:24.6098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l0rKrMPcZK2cBWDsixyLr95/4LRfLLg3BA+kOjrpC40XRjbkIRNSEDNOdEYvjRwRP5YneWBmQ004mNUSsnZeqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3717
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ibrs0-004WYZ-GW
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: fix retrans failure due to
 wrong destination
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
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 30-Nov-19 05:19
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [PATCH RFC] tipc: fix retrans failure due to wrong destination
> 
> When a user message is sent, TIPC will check if the socket has faced a
> congestion at link layer. If that happens, it will make a sleep to wait
> for the congestion to disappear. This leaves a gap for other users to
> take over the socket (e.g. multi threads) since the socket is released
> as well. Also, in case of connectionless (e.g. SOCK_RDM), user is free
> to send messages to various destinations (e.g. via 'sendto()'), then
> the socket's preformatted header has to be updated correspondingly
> prior to the actual payload message building.
> 
> Unfortunately, the latter action is done before the first action which
> causes a condition issue that the destination of a certain message can
> be modified incorrectly in the middle, leading to wrong destination
> when that message is built. Consequently, when the message is sent to
> the link layer, it gets stuck there forever because the peer node will
> simply reject it. After a number of retransmission attempts, the link
> is eventually taken down and the retransmission failure is reported.
> 
> This commit fixes the problem by rearranging the order of actions to
> prevent the race condition from occurring, so the message building is
> 'atomic' and its header will not be modified by anyone.
> 
> Fixes: 365ad353c256 ("tipc: reduce risk of user starvation during link congestion")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/socket.c | 32 ++++++++++++++++++--------------
>  1 file changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index a1c8d722ca20..9b0280a562a4 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1361,8 +1361,8 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>  	struct tipc_msg *hdr = &tsk->phdr;
>  	struct tipc_name_seq *seq;
>  	struct sk_buff_head pkts;
> -	u32 dport, dnode = 0;
> -	u32 type, inst;
> +	u32 dport = 0, dnode = 0;
> +	u32 type = 0, inst = 0;
>  	int mtu, rc;
> 
>  	if (unlikely(dlen > TIPC_MAX_USER_MSG_SIZE))
> @@ -1415,23 +1415,11 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>  		type = dest->addr.name.name.type;
>  		inst = dest->addr.name.name.instance;
>  		dnode = dest->addr.name.domain;
> -		msg_set_type(hdr, TIPC_NAMED_MSG);
> -		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
> -		msg_set_nametype(hdr, type);
> -		msg_set_nameinst(hdr, inst);
> -		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
>  		dport = tipc_nametbl_translate(net, type, inst, &dnode);
> -		msg_set_destnode(hdr, dnode);
> -		msg_set_destport(hdr, dport);
>  		if (unlikely(!dport && !dnode))
>  			return -EHOSTUNREACH;
>  	} else if (dest->addrtype == TIPC_ADDR_ID) {
>  		dnode = dest->addr.id.node;
> -		msg_set_type(hdr, TIPC_DIRECT_MSG);
> -		msg_set_lookup_scope(hdr, 0);
> -		msg_set_destnode(hdr, dnode);
> -		msg_set_destport(hdr, dest->addr.id.ref);
> -		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
>  	} else {
>  		return -EINVAL;
>  	}
> @@ -1442,6 +1430,22 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>  	if (unlikely(rc))
>  		return rc;
> 
> +	if (dest->addrtype == TIPC_ADDR_NAME) {
> +		msg_set_type(hdr, TIPC_NAMED_MSG);
> +		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
> +		msg_set_nametype(hdr, type);
> +		msg_set_nameinst(hdr, inst);
> +		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
> +		msg_set_destnode(hdr, dnode);
> +		msg_set_destport(hdr, dport);
> +	} else { /* TIPC_ADDR_ID */
> +		msg_set_type(hdr, TIPC_DIRECT_MSG);
> +		msg_set_lookup_scope(hdr, 0);
> +		msg_set_destnode(hdr, dnode);
> +		msg_set_destport(hdr, dest->addr.id.ref);
> +		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
> +	}
> +
>  	__skb_queue_head_init(&pkts);
>  	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
>  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
