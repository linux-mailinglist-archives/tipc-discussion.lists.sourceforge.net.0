Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A76161C5482
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 May 2020 13:36:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVvru-00021z-Sc; Tue, 05 May 2020 11:36:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jVvrt-00021a-67
 for tipc-discussion@lists.sourceforge.net; Tue, 05 May 2020 11:36:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gyKuKRPc8FMciLyWPSMICOtWvr7JqggbLF4WhfwhKnI=; b=RbuvPk1FaOShn9FjFeFM/55IwK
 HHnCUkiBdVFQS+SlPkGXL4ZlO22cAkK49ZxM8qwUqPK1lL7Piz8MLO4tPJoVBH6uCJi4xDEw2VV2G
 ocdgMU7Gu/1WU1SLxem6j1xwgmvHI5GmaqKCyZMZtdWoM+Yga5JC3j/7ttkftcbtABCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gyKuKRPc8FMciLyWPSMICOtWvr7JqggbLF4WhfwhKnI=; b=MdadVThAcNWC5sFXOZiJV1Gx5O
 r4WmcTHLzTuPKG0vW9rv9YC8m7Ld1BJlfg8WBhQLvO1I/7a8O4/cD5maWjev9mN5E0AGbMBeGAVpY
 0jgJ9k7P6KFjo7uGavc4SxhkkNCHnCVQ8muwHx8uzYvG0bYAE7US8SpU84fJs3xCte24=;
Received: from mail-vi1eur05on2120.outbound.protection.outlook.com
 ([40.107.21.120] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVvrl-00ECV0-1o
 for tipc-discussion@lists.sourceforge.net; Tue, 05 May 2020 11:36:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKWkdlfQPtSJzQJSTixTHe2lpWEURenDZ6nQ3SEUbFKSafXjjvWh6A0IJPKgJXvcLA2i3zzpmf3TaspOTZfwYK+EqzVYq4CjH0dmyBINyfn1gxvU7PNJZ0pbYZ003gQxGOgxthnBibon86QoIxqvJaXDSxvFOJLJfrrg0vZxT+ysVpUKqnOB8XGQFTLIqg7DRuasP/RYK2ud+Or6iwyBRH5KhbQICzDS8KaPGwCq9IdXi6+MgBSWMvN2Rx6wUqyaHUOvTCti4PqPUHlxaYgMlsHY3EbM+II6fXAg5qjakEnVoVSWnb/y0v9vI23ROsWzPnoR3/ar+Xux+OgujR0UkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyKuKRPc8FMciLyWPSMICOtWvr7JqggbLF4WhfwhKnI=;
 b=moaoH4BMJTb/dQXwn1iu//i3o9klhK0GOr6KykpY9Z5CdCZks5rp2iiXXrrvhgFM+cifZx8+UqFSvcNoi5rvea6A/7813X9C0OEHiz2opEjZ7CmG5kohIDXlsYPXdMSacPlOqrEXLgWyYdOibj9wzKdvwDTFCbCWG1Z861dbSrT7zN1fFymhn1gHhlLO6FNwysIlWK5YWVGMlIlpc25slT6xZoAecSJ7N/9nR5O8V5yPN4vJVODo61oKq9l7m0CpGPYwwa1mtCddR6naociIuqBbFM9EYeoqQnFnafSGKPBZoYTSfMbgs+Qw56cLCIY6ADSb8PWpXdr0m4rsCZkjQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyKuKRPc8FMciLyWPSMICOtWvr7JqggbLF4WhfwhKnI=;
 b=GVTrxDOsyWL2v7z0pHOQ+nyP6r2nTYz647ZwCaKyjDLROqLqfVVD9Of/I1lBA3VoCLO54JFBn1+7bU03XHxHXfU0ic/n1aYu3NLHnrwb6zI0ceW4QkOjrs9DVcfTknjcAvNY7bYHXp3nbdX7fZUR80sM+1KoclxiANeNhTl7pfA=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3623.eurprd05.prod.outlook.com (2603:10a6:209:8::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Tue, 5 May
 2020 11:35:52 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 11:35:51 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [RFC PATCH 2/2] tipc: add test for Nagle algorithm effectiveness
Thread-Index: AQHWIgcpWe+1jPuZ2Umd/vEaWaSqhaiYO1UAgAEhM1A=
Date: Tue, 5 May 2020 11:35:51 +0000
Message-ID: <AM6PR0502MB392585A3B371B03F82580B01E2A70@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-3-tuong.t.lien@dektech.com.au>
 <57d3ed20-3bbd-e0ac-ff02-a03ee611cb25@redhat.com>
In-Reply-To: <57d3ed20-3bbd-e0ac-ff02-a03ee611cb25@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 993560dd-ccb5-4ffc-9d7e-08d7f0e87740
x-ms-traffictypediagnostic: AM6PR0502MB3623:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB3623B024BA2DB1C27586BFB3E2A70@AM6PR0502MB3623.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fq4vtpiFCOD/sq3rKATGWqaJpP6fcPj29Y5bnUaLzQsPuEajGZGHW+fo/BDBfWXdIIy/ZNabNPd9jKNBfdeGsi1prkxmVrXR/PdvYM0xCsV8L7giqzBWjRHZiv7gpfiXcUq2CerSi3QSOVf4Cze5sy+SPDRzcugE9UvNq45eC4LG9qDyP9OmafstmV7GQYWjeQJ1i2SQvOXXeCrhOMNrPor6o9lQPXRfzuIUbbh0TeFtIix+LNfFW6L+zVySJzR7An2FSN+otF08HTHfel7JcbYXdRyzA9oXhAAfK+HR2/rIVHtcW7Q6AYKnhP/nNQvfcmRg3ebZImgtltBELp3zgxWPICuowyeKPpw2GKP4uUxxg+i2V8rKyJEH9h8g2apar1NwJ1xT7/nEusda57hHzt7PekkB40YJYkqrS5xmZk5jNjZkInjMbTNYVMyZfds/RjeX8EiOvcaLppGH8+MBKmI6EWqDayQpIC8EuHp+XOhLH5ZsP4Mxp2CynCQiL25TueBBZXuW2AF42qRhm+QSbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(136003)(396003)(366004)(376002)(346002)(33430700001)(64756008)(316002)(86362001)(8676002)(52536014)(33656002)(26005)(66556008)(508600001)(66476007)(76116006)(53546011)(6506007)(107886003)(4326008)(2906002)(66946007)(9686003)(55016002)(8936002)(186003)(5660300002)(33440700001)(66446008)(7696005)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cN2DDyPXpcKDDSUY12lUloh0o/Q462aIDVvTCUWv39M3HZDq5U/ay/u7IJqHMkksFjBz+CSCeztgyftyx2yGHAm1EvbhdpfHRwBm9/XoDLlUUyBQlNCzpBJ6f7lLXDDN8NJzgAvPtyM1wckGZX+QDYUV/fGuJlSR4lBHrFMprV4Zfd1MaeJ9adOCJuOhAD3c2/v1XMs9617/XRsBKWjQ2bRjEhzLdIQUeNZs766fFVY31K2cZEBBFFuj9rzsW+bSAjIgYcQjvDZraiRGjTGiot2MZDz179KXBxUKxZ6i76Xd3/BnJpYK1lum8WHkdhwmiuOvmzmCVj81X553jo7M6uS4Vxo7yoP1/qQ8++Hb/YS4YV4KsoDZQdbBl2kRaAipXztQc+9hGzsH/tRhHXyKuzG+JgVMvuEhwK2n/Rj8t7KoRzBeLDBaoubYZAMFJIskpkieJ8LvorKZj03BeWIdmNs7eCEwaBG+2S2uv8VWED5Qc6KWNrJuYwvpyiUJlBxNZYcVzz6GocNYaEmrRXX3TwGd6vS83zASIq60vs7DYHG40IdAS7CHrYmLSP+9oITfQqAW4wCoBAKFJKgAaupZgy6A0crH2WjUqDreh+04pR0eMQYBqpckQJk1m9Xz6QMwDropngvtxK/vY8ZLry4dVsD+hiDFCR0Cc5g7f32ru9vOYdeKc4E3uptT23qlfdYPArDq8PbDXargWfNJ0/tZflPIEnJnsncPk1BXXFLimM0mOdIAZakEvv8EOUwQRcOxjwyjqoevc1/5Gz4JO+n/PDMqDOUD+OZYfe2DfsvfsZI=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 993560dd-ccb5-4ffc-9d7e-08d7f0e87740
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 11:35:51.7977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hVuTyagSnHU/VLoOLYwINSMBOzT+u0/bm3J0AUChUd9uB9/t8hxte7Q9+vT2S4fFw98gkoI2kcNJiFhdidgRJ7RrnWmBVOnnizoyyphHYK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3623
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.120 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVvrl-00ECV0-1o
Subject: Re: [tipc-discussion] [RFC PATCH 2/2] tipc: add test for Nagle
 algorithm effectiveness
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Tuesday, May 5, 2020 1:13 AM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: Re: [RFC PATCH 2/2] tipc: add test for Nagle algorithm effectiveness



On 5/4/20 7:28 AM, Tuong Lien wrote:
> When streaming in Nagle mode, we try to bundle small messages from user
> as many as possible if there is one outstanding buffer, i.e. not ACK-ed
> by the receiving side, which helps boost up the overall throughput. So,
> the algorithm's effectiveness really depends on when Nagle ACK comes or
> what the specific network latency (RTT) is, compared to the user's
> message sending rate.
>
> In a bad case, the user's sending rate is low or the network latency is
> small, there will not be many bundles, so making a Nagle ACK or waiting
> for it is not meaningful.
> For example: a user sends its messages every 100ms and the RTT is 50ms,
> then for each messages, we require one Nagle ACK but then there is only
> one user message sent without any bundles.
>
> In a better case, even if we have a few bundles (e.g. the RTT = 300ms),
> but now the user sends messages in medium size, then there will not be
> any difference at all, that says 3 x 1000-byte data messages if bundled
> will still result in 3 bundles with MTU = 1500.
>
> When Nagle is ineffective, the delay in user message sending is clearly
> wasted instead of sending directly.
>
> Besides, adding Nagle ACKs will consume some processor load on both the
> sending and receiving sides.
>
> This commit adds a test on the effectiveness of the Nagle algorithm for
> an individual connection in the network on which it actually runs.
> Particularly, upon receipt of a Nagle ACK we will compare the number of
> bundles in the backlog queue to the number of user messages which would
> be sent directly without Nagle. If the ratio is good (e.g. >= 2), Nagle
> mode will be kept for further message sending. Otherwise, we will leave
> Nagle and put a 'penalty' on the connection, so it will have to spend
> more 'one-way' messages before being able to re-enter Nagle.
>
> In addition, the 'ack-required' bit is only set when really needed that
> the number of Nagle ACKs will be reduced during Nagle mode.
>
> Testing with benchmark showed that with the patch, there was not much
> difference in throughput for small messages since the tool continuously
> sends messages without a break, so Nagle would still take in effect.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/msg.c    |  3 ---
>   net/tipc/msg.h    | 14 +++++++++++--
>   net/tipc/socket.c | 60 ++++++++++++++++++++++++++++++++++++++++++++-----------
>   3 files changed, 60 insertions(+), 17 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 69d68512300a..732cd95b5c75 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -235,9 +235,6 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   			msg_set_size(hdr, MIN_H_SIZE);
>   			__skb_queue_tail(txq, skb);
>   			total += 1;
> -			if (prev)
> -				msg_set_ack_required(buf_msg(prev), 0);
> -			msg_set_ack_required(hdr, 1);
>   		}
>   		hdr = buf_msg(skb);
>   		curr = msg_blocks(hdr);
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 5f37a611e8c9..44543892af11 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -340,9 +340,19 @@ static inline int msg_ack_required(struct tipc_msg *m)
>   	return msg_bits(m, 0, 18, 1);
>   }
>   
> -static inline void msg_set_ack_required(struct tipc_msg *m, u32 d)
> +static inline void msg_set_ack_required(struct tipc_msg *m)
>   {
> -	msg_set_bits(m, 0, 18, 1, d);
> +	msg_set_bits(m, 0, 18, 1, 1);
> +}
> +
> +static inline int msg_nagle_ack(struct tipc_msg *m)
> +{
> +	return msg_bits(m, 0, 18, 1);
> +}
> +
> +static inline void msg_set_nagle_ack(struct tipc_msg *m)
> +{
> +	msg_set_bits(m, 0, 18, 1, 1);
>   }
>   
>   static inline bool msg_is_rcast(struct tipc_msg *m)
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 4e71774528ad..93b0a6159cb1 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -119,7 +119,10 @@ struct tipc_sock {
>   	struct rcu_head rcu;
>   	struct tipc_group *group;
>   	u32 oneway;
> +	u32 nagle_start;
>   	u16 snd_backlog;
> +	u16 msg_acc;
> +	u16 pkt_cnt;
>   	bool expect_ack;
>   	bool nodelay;
>   	bool group_is_open;
> @@ -143,7 +146,7 @@ static int tipc_sk_insert(struct tipc_sock *tsk);
>   static void tipc_sk_remove(struct tipc_sock *tsk);
>   static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
>   static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
> -static void tipc_sk_push_backlog(struct tipc_sock *tsk);
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack);
>   
>   static const struct proto_ops packet_ops;
>   static const struct proto_ops stream_ops;
> @@ -474,6 +477,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
>   	tsk = tipc_sk(sk);
>   	tsk->max_pkt = MAX_PKT_DEFAULT;
>   	tsk->maxnagle = 0;
> +	tsk->nagle_start = 4;
>   	INIT_LIST_HEAD(&tsk->publications);
>   	INIT_LIST_HEAD(&tsk->cong_links);
>   	msg = &tsk->phdr;
> @@ -541,7 +545,7 @@ static void __tipc_shutdown(struct socket *sock, int error)
>   					    !tsk_conn_cong(tsk)));
>   
>   	/* Push out delayed messages if in Nagle mode */
> -	tipc_sk_push_backlog(tsk);
> +	tipc_sk_push_backlog(tsk, false);
>   	/* Remove pending SYN */
>   	__skb_queue_purge(&sk->sk_write_queue);
>   
> @@ -1252,14 +1256,37 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>   /* tipc_sk_push_backlog(): send accumulated buffers in socket write queue
>    *                         when socket is in Nagle mode
>    */
> -static void tipc_sk_push_backlog(struct tipc_sock *tsk)
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack)
>   {
>   	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
> +	struct sk_buff *skb = skb_peek_tail(txq);
>   	struct net *net = sock_net(&tsk->sk);
>   	u32 dnode = tsk_peer_node(tsk);
> -	struct sk_buff *skb = skb_peek(txq);
>   	int rc;
>   
> +	if (nagle_ack) {
> +		tsk->pkt_cnt += skb_queue_len(txq);
> +		if (!tsk->pkt_cnt || tsk->msg_acc / tsk->pkt_cnt < 2) {
> +			tsk->oneway = 0;
> +			if (tsk->nagle_start < 1000)
> +				tsk->nagle_start *= 2;
> +			tsk->expect_ack = false;
> +			pr_debug("tsk %10u: bad nagle %u -> %u, next start %u!\n",
> +				 tsk->portid, tsk->msg_acc, tsk->pkt_cnt,
> +				 tsk->nagle_start);
> +		} else {
> +			tsk->nagle_start = 4;
> +			if (skb) {
> +				msg_set_ack_required(buf_msg(skb));
> +				tsk->expect_ack = true;
> +			} else {
> +				tsk->expect_ack = false;
> +			}
> +		}
> +		tsk->msg_acc = 0;
> +		tsk->pkt_cnt = 0;
> +	}
> +
>   	if (!skb || tsk->cong_link_cnt)
>   		return;
>   
> @@ -1267,9 +1294,10 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
>   	if (msg_is_syn(buf_msg(skb)))
>   		return;
>   
> +	if (tsk->msg_acc)
> +		tsk->pkt_cnt += skb_queue_len(txq);
>   	tsk->snt_unacked += tsk->snd_backlog;
>   	tsk->snd_backlog = 0;
> -	tsk->expect_ack = true;
>   	rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
>   	if (rc == -ELINKCONG)
>   		tsk->cong_link_cnt = 1;
> @@ -1322,8 +1350,7 @@ static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
>   		return;
>   	} else if (mtyp == CONN_ACK) {
>   		was_cong = tsk_conn_cong(tsk);
> -		tsk->expect_ack = false;
> -		tipc_sk_push_backlog(tsk);
> +		tipc_sk_push_backlog(tsk, msg_nagle_ack(hdr));
>   		tsk->snt_unacked -= msg_conn_ack(hdr);
>   		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
>   			tsk->snd_win = msg_adv_win(hdr);
> @@ -1544,17 +1571,24 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
>   			break;
>   		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
>   		blocks = tsk->snd_backlog;
> -		if (tsk->oneway++ >= 4 && send <= maxnagle) {
> +		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
>   			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
>   			if (unlikely(rc < 0))
>   				break;
>   			blocks += rc;
> +			tsk->msg_acc++;
>   			if (blocks <= 64 && tsk->expect_ack) {
>   				tsk->snd_backlog = blocks;
>   				sent += send;
>   				break;
> +			} else if (blocks > 64) {
> +				tsk->pkt_cnt += skb_queue_len(txq);
> +			} else {
> +				msg_set_ack_required(buf_msg(skb_peek_tail(txq)));
> +				tsk->expect_ack = true;
> +				tsk->msg_acc = 0;
> +				tsk->pkt_cnt = 0;
>   			}
> -			tsk->expect_ack = true;
>   		} else {
>   			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
>   			if (unlikely(rc != send))
> @@ -2092,7 +2126,7 @@ static void tipc_sk_proto_rcv(struct sock *sk,
>   		smp_wmb();
>   		tsk->cong_link_cnt--;
>   		wakeup = true;
> -		tipc_sk_push_backlog(tsk);
> +		tipc_sk_push_backlog(tsk, false);
>   		break;
>   	case GROUP_PROTOCOL:
>   		tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq);
> @@ -2181,7 +2215,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
>   		return false;
>   	case TIPC_ESTABLISHED:
>   		if (!skb_queue_empty(&sk->sk_write_queue))
> -			tipc_sk_push_backlog(tsk);
> +			tipc_sk_push_backlog(tsk, false);
>   		/* Accept only connection-based messages sent by peer */
>   		if (likely(con_msg && !err && pport == oport &&
>   			   pnode == onode)) {
> @@ -2189,8 +2223,10 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
>   				struct sk_buff *skb;
>   
>   				skb = tipc_sk_build_ack(tsk);
> -				if (skb)
> +				if (skb) {
> +					msg_set_nagle_ack(buf_msg(skb));
>   					__skb_queue_tail(xmitq, skb);
> +				}
>   			}
>   			return true;
>   		}
Nice job. Does this even solve the latency problem you had observed at 
customer site?

[Tuong]: Yes, after applying these two patches, they didn't observe the increase in latency or CPU load in their tests (even though Nagle was still enabled in some way).

BR/Tuong

Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
