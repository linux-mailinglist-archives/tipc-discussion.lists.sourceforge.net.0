Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87DCE37DE
	for <lists+tipc-discussion@lfdr.de>; Thu, 24 Oct 2019 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nT8lm9eZWY950LiDE8x+uQr3gZdA1qaRdGhIPTH7TqU=; b=VxCmyB+phthW2ExuD7L0mTLGC
	SZZypqRtScvguUkXMguapj/cVdPdxMU+Py3Tt2wJadiYkF0ROMfgAkoWuliYJQfY8OTgyZKCD0b08
	UUVyifnvm8x8TjnEOeionz+h4tz+lwvWQA703ha+MXePohYJlsufUCNpPchniZ52U/xmE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iNfyc-0005cI-De; Thu, 24 Oct 2019 16:28:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iNfya-0005c0-EB
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 16:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVVs7eDal6aN0BZO2vkCLe+IaZ1MHP0JtkLneuzXYCg=; b=O/XsiBm1+gObQrwkpFAXVggXH6
 u2jPlo8Y6rMbs9B/Z+p1Rtc6wwiC0/Ce7amBF9f07JQyvwejG5CdhnrCSepMY/5Dje2pgHS5BVWJl
 quo1q1MwcCyai6i+sbNsv8oJmSJDhB2FAsUThE80owm3x708HmQY7pvXzhQ9xccHCDqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JVVs7eDal6aN0BZO2vkCLe+IaZ1MHP0JtkLneuzXYCg=; b=IWtbf45uhGTrONE42lRNZK/UXh
 GW1m4C9cDP+oxk2wRylxt+P4sxR6f6Hl2JY7OSt0+n0EY+syk7XGwS58oDVE3lzALVtZlvSnaGjsf
 tl8LuZnEiT4YlUZRSSfgT3pisuDouZNs5clxoDLIImbu/5BOMEG0MstScWeoFg1sIIRI=;
Received: from mail-eopbgr700045.outbound.protection.outlook.com
 ([40.107.70.45] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNfyU-001uH2-CW
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 16:28:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fliDMN6nvnK5WJ+OudnSGvbVAhw+Wn6xTieAv2SkZuGH1UzX/ArODxyFGpKK6OPdy46cXkdEa/OXsPC2++RU7Fledd9IbNE9Cf1n6UqDnWQ0TiNBubLqkRNudfpue04hAM21v3xJPr6Nll+2S8JNzVgIqyANjgYoL2/HrBXquF1eT2Kga6XBUbSZIRiJFgUHfMfIloSiAJp9sQ7Pe1AWoU7WUA9/YtIygwxaxXpHDajKwlAEu+hzfVTHa2z7voBDV8/DCX7bQSKYophmU+CuQxsfy9VbEH8j6E7PQIxf6deR3G7BLyrLmmg6Tkw/nye5rlyVTwD565YAX94WLvzW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVVs7eDal6aN0BZO2vkCLe+IaZ1MHP0JtkLneuzXYCg=;
 b=XW6FJ5I3IYRDGgTpk6+Es5Ua1cmuBpab+5DVjoaHuHYIYqHBssWjqo6p9CchRUiUF97FCMTUdDJKi77Mf5McSTDz9peqlcCESXPJzCTojCxIXGEe1bepG7PXrNEzzJC5tbO1bh36DEdSrG9FzjmhP5d3QCDaLkphjsIcwsMvg93BXkO9MMxo6NmBPLaU7hpC5Sxmp5cS5x62Fy2cFhE0pXBdrpdU9+pQgtWw0IU1XbCeGAOFnR7W3o3u73CnFqEgDmPOUWWDybcUmE92rYPSfYXWSWtka5ISJrLbcXs2PDzYpyi9T06BuIOzs+wnxv5wrVKBZTMN6b5loWKIMwLj4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVVs7eDal6aN0BZO2vkCLe+IaZ1MHP0JtkLneuzXYCg=;
 b=YT50CGVk4vu8lmcRbsUv/E37Yyaex0FDjMdKaINi/J5thCdrU8T0tK5z9363Dsb/ZHwegQP99t/2QopJFUTAAgaDpZuvHJCio0IJ7i1vhqKoOIN0ehBorhWKYwg24HaFYL/f9VF+rQNwBkOXamuZ9MYtLY9qJjdU7peteXerDBE=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3718.namprd15.prod.outlook.com (52.132.230.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 24 Oct 2019 16:28:26 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2367.027; Thu, 24 Oct 2019
 16:28:26 +0000
To: "Xue, Ying" <Ying.Xue@windriver.com>, Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next v2 1/1] tipc: add smart nagle feature
Thread-Index: AQHViXbsS08wET590k24EbyFljw1GKdp7EwAgAALF8A=
Date: Thu, 24 Oct 2019 16:28:26 +0000
Message-ID: <CH2PR15MB357517869AAE9937DD7B00B59A6A0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1571817191-20282-1-git-send-email-jon.maloy@ericsson.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA51534@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CA51534@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e768c9f8-e4bd-44c0-1f4c-08d7589f3291
x-ms-traffictypediagnostic: CH2PR15MB3718:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB3718381DB8DE2DE9DAC77E5A9A6A0@CH2PR15MB3718.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(346002)(396003)(376002)(189003)(199004)(13464003)(476003)(71200400001)(7736002)(71190400001)(55016002)(86362001)(2906002)(8936002)(8676002)(186003)(74316002)(81156014)(4326008)(6436002)(256004)(9686003)(25786009)(6246003)(7696005)(30864003)(44832011)(6116002)(3846002)(110136005)(14454004)(6506007)(33656002)(5660300002)(81166006)(14444005)(54906003)(52536014)(478600001)(316002)(53546011)(66446008)(66946007)(102836004)(66556008)(64756008)(66476007)(76116006)(446003)(99286004)(76176011)(66066001)(26005)(486006)(229853002)(305945005)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3718;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4bcnt7Fl94IXoMnG+gFOPduWHA3o4v29jCDbSgS0TusxuATWVXtPZHJIcTX9gVRCdRr9CjHYeKLvmBYaynLY6NLnjUwF0aw4e1SMeW5VrktPUZ80fVVUeK4rovC633qtG/WxfSzJ0YdGjWk2Ik7u6Pp5wWtl14Sbu5J7/GyDKlNAbZE1xIk34tzB3JGnLinvLE4Re6H0Bvf9MDvfAZnjOxv0v3FGi4MZjdQBPOwqZbM2h+QhBlNHgIuQ3e5z6GhwqjmsoYV+65vC/aS9ENiBfWn2kyIyJiBEBvk9/tYuuF2Sxj3b6sryZRJn6TP/in+vNAy8dy5GAVUPjzsorI2xweHaMVBpWEkHzrc7600g7TowbF4fovZOBIUh9nbVKi5bJaJslIKBELDlcGluS48BwS6Sm91nWKfTr8vt5Yi98YAInnJWxA8CoAqRwUES5mWI
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e768c9f8-e4bd-44c0-1f4c-08d7589f3291
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 16:28:26.5961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5sAD4U3dOMwEPjHmrGDuI/kZZ4UfmlGC2jbKr4Rjj2t2J4pCNKLZljgNhMk+6tbIpLFmTP1rCNFCTryaN2QuMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3718
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iNfyU-001uH2-CW
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: add smart nagle
 feature
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Ying,
1) TIPC_NODELAY might be a good option, although I fear people might misuse it in the belief that TIPC nagle has the same disadvantages as TCP nagle, which it doesn't.
But ok, I'll add it.

2) CONN_PROBE/CONN_PROBE_REPLY are not considered simply because they are so rare (once per hour) that they won't make any difference.

3) We don't really have any tools to measure this. The latency measurement in our benchmark tool never trigs nagle mode, so we won't notice any difference.
     When nagle is enabled, we can only measure latency per direction, not round-trip delay (since there is no return message), but logically it works as follows:

Scenario 1: 
     1) Socket goes to nagle mode. The message trigging this is not bundled, but just sent out with the 'response_req' bit set.
     2) A number of messages and possible skbs are added to the queue.
     3) The ACK_MSG (response on msg 1) arrives after 1 RTT, and the accumulated messages are sent. So, the first message, probably added just after the 'resp-req' message was sent might have a delay of up to one RTT. The remaining messages in the queue will have a lower delay, and notably a message added just before the ACK_MSG arrives will have almost no delay.

Scenario 2:
     1) Socket is in nagle mode, and a number of messages are being accumulated. The last message in the queue always have the resp_req bit set.
     2) The queue surpasses 64 k, or a larger message than 'maxnagle'is being sent. So the whole send queue is sent out. 
     3) Obviously we didn't wait for the expected MSG_ACK in this case, so the delay for all messages is less than 1 RTT.

Remains to know the size of RTT, but in the type of clusters we are running this is rarely more than a few milliseconds, at most. This in contrast to TCP, where the delay may be several hundred milliseconds.

///jon


> -----Original Message-----
> From: Xue, Ying <Ying.Xue@windriver.com>
> Sent: 24-Oct-19 11:28
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next v2 1/1] tipc: add smart nagle feature
> 
> Hi Jon,
> 
> We have the following comments:
> - Please consider to add TIPC_NODELAY option of tipc_setsockopt() so that
> user has right to disable nagle algorithm.
> -  I don't understand why we don't transmit the accumulated contents of the
> write queue when a CONN_PROBE message is received from the peer. Can
> you please explain it?
> - I am just curious what impact the nagle feature has on latency for
> SOCK_STREAM socket. Did you ever measure latency after nagle feature is
> enabled?
> 
> Thanks,
> Ying
> 
> -----Original Message-----
> From: Jon Maloy [mailto:jon.maloy@ericsson.com]
> Sent: Wednesday, October 23, 2019 3:53 PM
> To: Jon Maloy; Jon Maloy
> Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com;
> parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au;
> hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au;
> gordan.mihaljevic@dektech.com.au; Xue, Ying; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next v2 1/1] tipc: add smart nagle feature
> 
> We introduce a Nagle-like algorithm for bundling small messages at the socket
> level.
> 
> - A socket enters nagle mode when more than 4 messages have been sent
>   out without receiving any data message from the peer.
> - A socket leaves nagle mode whenever it receives a data message from
>   the peer.
> 
> In nagle mode, small messages are accumulated in the socket write queue.
> The last buffer in the queue is marked with a new 'ack_required' bit, which
> forces the receiving peer to send a CONN_ACK message back to the sender.
> 
> The accumulated contents of the write queue is transmitted when one of the
> following events or conditions occur.
> 
> - A CONN_ACK message is received from the peer.
> - A data message is received from the peer.
> - A SOCK_WAKEUP pseudo message is received from the link level.
> - The write queue contains more than 64 1k blocks of data.
> - The connection is being shut down.
> - There is no CONN_ACK message to expect. I.e., there is currently
>   no outstanding message where the 'ack_required' bit was set. As a
>   consequence, the first message added after we enter nagle mode
>   is always sent directly with this bit set.
> 
> This new feature gives a 50-100% improvement of throughput for small (i.e.,
> less than MTU size) messages, while it might add up to one RTT to latency time
> when the socket is in nagle mode.
> 
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> 
> ---
> v2: Increased max nagle size for UDP to 14k. This improves
>     throughput for messages 750-1500 bytes with ~50%.
> ---
>  net/tipc/msg.c    | 53 ++++++++++++++++++++++++++++++++
>  net/tipc/msg.h    | 12 ++++++++
>  net/tipc/node.h   |  7 +++--
>  net/tipc/socket.c | 91
> +++++++++++++++++++++++++++++++++++++++++++++----------
>  4 files changed, 145 insertions(+), 18 deletions(-)
> 
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c index 922d262..973795a 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -190,6 +190,59 @@ int tipc_buf_append(struct sk_buff **headbuf,
> struct sk_buff **buf)
>  	return 0;
>  }
> 
> +/**
> + * tipc_msg_append(): Append data to tail of an existing buffer queue
> + * @hdr: header to be used
> + * @m: the data to be appended
> + * @mss: max allowable size of buffer
> + * @dlen: size of data to be appended
> + * @txq: queue to appand to
> + * Returns the number og 1k blocks appended or errno value  */ int
> +tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
> +		    int mss, struct sk_buff_head *txq) {
> +	struct sk_buff *skb, *prev;
> +	int accounted, total, curr;
> +	int mlen, cpy, rem = dlen;
> +	struct tipc_msg *hdr;
> +
> +	skb = skb_peek_tail(txq);
> +	accounted = skb ? msg_blocks(buf_msg(skb)) : 0;
> +	total = accounted;
> +
> +	while (rem) {
> +		if (!skb || skb->len >= mss) {
> +			prev = skb;
> +			skb = tipc_buf_acquire(mss, GFP_KERNEL);
> +			if (unlikely(!skb))
> +				return -ENOMEM;
> +			skb_orphan(skb);
> +			skb_trim(skb, MIN_H_SIZE);
> +			hdr = buf_msg(skb);
> +			skb_copy_to_linear_data(skb, _hdr, MIN_H_SIZE);
> +			msg_set_hdr_sz(hdr, MIN_H_SIZE);
> +			msg_set_size(hdr, MIN_H_SIZE);
> +			__skb_queue_tail(txq, skb);
> +			total += 1;
> +			if (prev)
> +				msg_set_ack_required(buf_msg(prev), 0);
> +			msg_set_ack_required(hdr, 1);
> +		}
> +		hdr = buf_msg(skb);
> +		curr = msg_blocks(hdr);
> +		mlen = msg_size(hdr);
> +		cpy = min_t(int, rem, mss - mlen);
> +		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
> +			return -EFAULT;
> +		msg_set_size(hdr, mlen + cpy);
> +		skb_put(skb, cpy);
> +		rem -= cpy;
> +		total += msg_blocks(hdr) - curr;
> +	}
> +	return total - accounted;
> +}
> +
>  /* tipc_msg_validate - validate basic format of received message
>   *
>   * This routine ensures a TIPC message has an acceptable header, and at least
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h index 0daa6f0..b85b85a 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -290,6 +290,16 @@ static inline void msg_set_src_droppable(struct
> tipc_msg *m, u32 d)
>  	msg_set_bits(m, 0, 18, 1, d);
>  }
> 
> +static inline int msg_ack_required(struct tipc_msg *m) {
> +	return msg_bits(m, 0, 18, 1);
> +}
> +
> +static inline void msg_set_ack_required(struct tipc_msg *m, u32 d) {
> +	msg_set_bits(m, 0, 18, 1, d);
> +}
> +
>  static inline bool msg_is_rcast(struct tipc_msg *m)  {
>  	return msg_bits(m, 0, 18, 0x1);
> @@ -1065,6 +1075,8 @@ int tipc_msg_fragment(struct sk_buff *skb, const
> struct tipc_msg *hdr,
>  		      int pktmax, struct sk_buff_head *frags);  int
> tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m,
>  		   int offset, int dsz, int mtu, struct sk_buff_head *list);
> +int tipc_msg_append(struct tipc_msg *hdr, struct msghdr *m, int dlen,
> +		    int mss, struct sk_buff_head *txq);
>  bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err);
> bool tipc_msg_assemble(struct sk_buff_head *list);  bool
> tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq);
> diff --git a/net/tipc/node.h b/net/tipc/node.h index 291d0ec..b9036f28
> 100644
> --- a/net/tipc/node.h
> +++ b/net/tipc/node.h
> @@ -54,7 +54,8 @@ enum {
>  	TIPC_LINK_PROTO_SEQNO = (1 << 6),
>  	TIPC_MCAST_RBCTL      = (1 << 7),
>  	TIPC_GAP_ACK_BLOCK    = (1 << 8),
> -	TIPC_TUNNEL_ENHANCED  = (1 << 9)
> +	TIPC_TUNNEL_ENHANCED  = (1 << 9),
> +	TIPC_NAGLE            = (1 << 10)
>  };
> 
>  #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
> @@ -66,7 +67,9 @@ enum {
>  				TIPC_LINK_PROTO_SEQNO  |   \
>  				TIPC_MCAST_RBCTL       |   \
>  				TIPC_GAP_ACK_BLOCK     |   \
> -				TIPC_TUNNEL_ENHANCED)
> +				TIPC_TUNNEL_ENHANCED   |   \
> +				TIPC_NAGLE)
> +
>  #define INVALID_BEARER_ID -1
> 
>  void tipc_node_stop(struct net *net);
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c index 35e32ff..1594a50
> 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -75,6 +75,7 @@ struct sockaddr_pair {
>   * @conn_instance: TIPC instance used when connection was established
>   * @published: non-zero if port has one or more associated names
>   * @max_pkt: maximum packet size "hint" used when building messages sent
> by port
> + * @maxnagle: maximum size of mmsg subject to nagle
>   * @portid: unique port identity in TIPC socket hash table
>   * @phdr: preformatted message header used when sending messages
>   * #cong_links: list of congested links @@ -97,6 +98,7 @@ struct tipc_sock {
>  	u32 conn_instance;
>  	int published;
>  	u32 max_pkt;
> +	u32 maxnagle;
>  	u32 portid;
>  	struct tipc_msg phdr;
>  	struct list_head cong_links;
> @@ -116,6 +118,9 @@ struct tipc_sock {
>  	struct tipc_mc_method mc_method;
>  	struct rcu_head rcu;
>  	struct tipc_group *group;
> +	u32 oneway;
> +	u16 snd_backlog;
> +	bool expect_ack;
>  	bool group_is_open;
>  };
> 
> @@ -137,6 +142,7 @@ static int tipc_sk_insert(struct tipc_sock *tsk);  static
> void tipc_sk_remove(struct tipc_sock *tsk);  static int
> __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);  static
> int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk);
> 
>  static const struct proto_ops packet_ops;  static const struct proto_ops
> stream_ops; @@ -446,6 +452,7 @@ static int tipc_sk_create(struct net *net,
> struct socket *sock,
> 
>  	tsk = tipc_sk(sk);
>  	tsk->max_pkt = MAX_PKT_DEFAULT;
> +	tsk->maxnagle = MAX_PKT_DEFAULT;
>  	INIT_LIST_HEAD(&tsk->publications);
>  	INIT_LIST_HEAD(&tsk->cong_links);
>  	msg = &tsk->phdr;
> @@ -512,8 +519,12 @@ static void __tipc_shutdown(struct socket *sock, int
> error)
>  	tipc_wait_for_cond(sock, &timeout, (!tsk->cong_link_cnt &&
>  					    !tsk_conn_cong(tsk)));
> 
> -	/* Remove any pending SYN message */
> -	__skb_queue_purge(&sk->sk_write_queue);
> +	/* Push out unsent messages or remove if pending SYN */
> +	skb = skb_peek(&sk->sk_write_queue);
> +	if (skb && !msg_is_syn(buf_msg(skb)))
> +		tipc_sk_push_backlog(tsk);
> +	else
> +		__skb_queue_purge(&sk->sk_write_queue);
> 
>  	/* Reject all unreceived messages, except on an active connection
>  	 * (which disconnects locally & sends a 'FIN+' to peer).
> @@ -1208,6 +1219,27 @@ void tipc_sk_mcast_rcv(struct net *net, struct
> sk_buff_head *arrvq,
>  	tipc_sk_rcv(net, inputq);
>  }
> 
> +/* tipc_sk_push_backlog(): send accumulated buffers in socket write queue
> + *                         when socket is in Nagle mode
> + */
> +static void tipc_sk_push_backlog(struct tipc_sock *tsk) {
> +	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
> +	struct net *net = sock_net(&tsk->sk);
> +	u32 dnode = tsk_peer_node(tsk);
> +	int rc;
> +
> +	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
> +		return;
> +
> +	tsk->snt_unacked += tsk->snd_backlog;
> +	tsk->snd_backlog = 0;
> +	tsk->expect_ack = true;
> +	rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
> +	if (rc == -ELINKCONG)
> +		tsk->cong_link_cnt = 1;
> +}
> +
>  /**
>   * tipc_sk_conn_proto_rcv - receive a connection mng protocol message
>   * @tsk: receiving socket
> @@ -1221,7 +1253,7 @@ static void tipc_sk_conn_proto_rcv(struct
> tipc_sock *tsk, struct sk_buff *skb,
>  	u32 onode = tsk_own_node(tsk);
>  	struct sock *sk = &tsk->sk;
>  	int mtyp = msg_type(hdr);
> -	bool conn_cong;
> +	bool was_cong;
> 
>  	/* Ignore if connection cannot be validated: */
>  	if (!tsk_peer_msg(tsk, hdr)) {
> @@ -1254,11 +1286,13 @@ static void tipc_sk_conn_proto_rcv(struct
> tipc_sock *tsk, struct sk_buff *skb,
>  			__skb_queue_tail(xmitq, skb);
>  		return;
>  	} else if (mtyp == CONN_ACK) {
> -		conn_cong = tsk_conn_cong(tsk);
> +		was_cong = tsk_conn_cong(tsk);
> +		tsk->expect_ack = false;
> +		tipc_sk_push_backlog(tsk);
>  		tsk->snt_unacked -= msg_conn_ack(hdr);
>  		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
>  			tsk->snd_win = msg_adv_win(hdr);
> -		if (conn_cong)
> +		if (was_cong && !tsk_conn_cong(tsk))
>  			sk->sk_write_space(sk);
>  	} else if (mtyp != CONN_PROBE_REPLY) {
>  		pr_warn("Received unknown CONN_PROTO msg\n"); @@ -
> 1437,16 +1471,17 @@ static int __tipc_sendstream(struct socket *sock,
> struct msghdr *m, size_t dlen)
>  	struct sock *sk = sock->sk;
>  	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
>  	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
> +	struct sk_buff_head *txq = &sk->sk_write_queue;
>  	struct tipc_sock *tsk = tipc_sk(sk);
>  	struct tipc_msg *hdr = &tsk->phdr;
>  	struct net *net = sock_net(sk);
> -	struct sk_buff_head pkts;
>  	u32 dnode = tsk_peer_node(tsk);
> +	int blocks = tsk->snd_backlog;
> +	int maxnagle = tsk->maxnagle;
> +	int maxpkt = tsk->max_pkt;
>  	int send, sent = 0;
>  	int rc = 0;
> 
> -	__skb_queue_head_init(&pkts);
> -
>  	if (unlikely(dlen > INT_MAX))
>  		return -EMSGSIZE;
> 
> @@ -1467,21 +1502,38 @@ static int __tipc_sendstream(struct socket
> *sock, struct msghdr *m, size_t dlen)
>  					 tipc_sk_connected(sk)));
>  		if (unlikely(rc))
>  			break;
> -
>  		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
> -		rc = tipc_msg_build(hdr, m, sent, send, tsk->max_pkt, &pkts);
> -		if (unlikely(rc != send))
> -			break;
> 
> -		trace_tipc_sk_sendstream(sk, skb_peek(&pkts),
> +		if (tsk->oneway++ >= 4 &&
> +		    send <= maxnagle &&
> +		    tsk->peer_caps & TIPC_NAGLE &&
> +		    sock->type == SOCK_STREAM) {
> +			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
> +			if (rc < 0)
> +				break;
> +			blocks += rc;
> +			if (blocks <= 64 && tsk->expect_ack) {
> +				tsk->snd_backlog = blocks;
> +				sent += send;
> +				break;
> +			}
> +			tsk->expect_ack = true;
> +		} else {
> +			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
> +			if (unlikely(rc != send))
> +				break;
> +			blocks += tsk_inc(tsk, send + MIN_H_SIZE);
> +		}
> +		trace_tipc_sk_sendstream(sk, skb_peek(txq),
>  					 TIPC_DUMP_SK_SNDQ, " ");
> -		rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
> +		rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
>  		if (unlikely(rc == -ELINKCONG)) {
>  			tsk->cong_link_cnt = 1;
>  			rc = 0;
>  		}
>  		if (likely(!rc)) {
> -			tsk->snt_unacked += tsk_inc(tsk, send + MIN_H_SIZE);
> +			tsk->snt_unacked += blocks;
> +			tsk->snd_backlog = 0;
>  			sent += send;
>  		}
>  	} while (sent < dlen && !rc);
> @@ -1527,6 +1579,7 @@ static void tipc_sk_finish_conn(struct tipc_sock
> *tsk, u32 peer_port,
>  	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
>  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
>  	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
> +	tsk->maxnagle = tsk->max_pkt == MAX_MSG_SIZE ? 1500 : tsk-
> >max_pkt;
>  	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
>  	__skb_queue_purge(&sk->sk_write_queue);
>  	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL) @@ -1848,6 +1901,7
> @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
>  	bool peek = flags & MSG_PEEK;
>  	int offset, required, copy, copied = 0;
>  	int hlen, dlen, err, rc;
> +	bool ack = false;
>  	long timeout;
> 
>  	/* Catch invalid receive attempts */
> @@ -1892,6 +1946,7 @@ static int tipc_recvstream(struct socket *sock,
> struct msghdr *m,
> 
>  		/* Copy data if msg ok, otherwise return error/partial data */
>  		if (likely(!err)) {
> +			ack = msg_ack_required(hdr);
>  			offset = skb_cb->bytes_read;
>  			copy = min_t(int, dlen - offset, buflen - copied);
>  			rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> @@ -1919,7 +1974,7 @@ static int tipc_recvstream(struct socket *sock,
> struct msghdr *m,
> 
>  		/* Send connection flow control advertisement when applicable
> */
>  		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
> -		if (unlikely(tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE))
> +		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
>  			tipc_sk_send_ack(tsk);
> 
>  		/* Exit if all requested data or FIN/error received */ @@ -1990,6
> +2045,7 @@ static void tipc_sk_proto_rcv(struct sock *sk,
>  		smp_wmb();
>  		tsk->cong_link_cnt--;
>  		wakeup = true;
> +		tipc_sk_push_backlog(tsk);
>  		break;
>  	case GROUP_PROTOCOL:
>  		tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq); @@ -
> 2029,6 +2085,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk,
> struct sk_buff *skb)
> 
>  	if (unlikely(msg_mcast(hdr)))
>  		return false;
> +	tsk->oneway = 0;
> 
>  	switch (sk->sk_state) {
>  	case TIPC_CONNECTING:
> @@ -2074,6 +2131,8 @@ static bool tipc_sk_filter_connect(struct tipc_sock
> *tsk, struct sk_buff *skb)
>  			return true;
>  		return false;
>  	case TIPC_ESTABLISHED:
> +		if (!skb_queue_empty(&sk->sk_write_queue))
> +			tipc_sk_push_backlog(tsk);
>  		/* Accept only connection-based messages sent by peer */
>  		if (likely(con_msg && !err && pport == oport && pnode ==
> onode))
>  			return true;
> --
> 2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
