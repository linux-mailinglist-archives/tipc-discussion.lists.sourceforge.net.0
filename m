Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 210ED1C3881
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 13:43:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVZVh-0001kd-UK; Mon, 04 May 2020 11:43:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jVZVf-0001kU-D1
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZT5qwd89xREQ7J6v0ACnYfvRQ/qpi3fB0jTEN2XEBiM=; b=abhX168E4qglbcOoTJ9H7bZvMB
 dTX55k6avLrwAjrrz6gvYfRilsNvc08a6PJJgdnw/1MwTseXnc0+7+b4YWVx90MBN0hEwUEPKeIbg
 4N0OILOgXa/cljucan3Ga4jIO9gVT+BJojQQRFw85nYtgkExlSef36K9pDVCJxqlq8JM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZT5qwd89xREQ7J6v0ACnYfvRQ/qpi3fB0jTEN2XEBiM=; b=KfFlNlJyNwECzdoCtjtkQDzOGc
 WHzXSB+19w7StvsjwcInKjfPxnllDYbzE171eSlOWK4eZuAApkf2lgnmcSfWiBwzLk+vkF/IvCOwj
 uuy8R1wYqwr89053uKYYrUZktGUMhbqTsBGnND5+aQ6aWQ+g+6fFK5R3YcDcIFp1SSd8=;
Received: from mail-eopbgr70091.outbound.protection.outlook.com ([40.107.7.91]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVZVd-006gaO-Hs
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:43:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NiMEKw3EW8JCp3RiVyzRNOH9IjqWANphze3bRnohGffzUuS8ZXy8M882JRpJDwYJRWfCF7fdAUNH68zqpsP3LBvBI3kPatRmoUyDc3ED17f6cd+C/lg4lpRWZai3f+JKvv4rOVOKlwVJUekNcDmAdszfLwPHXcS8bK9VdNQucnBqbkHanWT72iBmaPp80r3HBd9nRi3wQPTomMBtMW2XuuiUXEf2T2+zWBmO4X9Bt45edXbXPEn/FZMfiixrJDORGw3/uSnG//gV4dpfxFw4JbUw1WfNe5HEMhGtCsDUTpMRKC66gph/9IOV7y6lo2NmaXXaBVvVBlJ139+A3f2JXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZT5qwd89xREQ7J6v0ACnYfvRQ/qpi3fB0jTEN2XEBiM=;
 b=ePHJZMFmYFyqq619nELTf1jJ9pZYZw/UW5XdEjd0Rymub+OqLDzGNoFq50lmfVwO/ThZik2EhmIb2EgdILdNF7vUqo96AbjtnkeustW4GEGV9Vy+6r+GZ1jTpjWLbWQ38/ds6WYfPJObr9k8aMd2O23luf+kGJAbXmnSNYm8qDboWIEgMV+UBkiaTLfsWk2oLdQ3u4bgTGYWH2nF4NAbVzSX3IYpKsf8oBf86HeNuHobWk6yMPntApLYucJnEea7Hb0HxbYvBrz6m4TT6Ut7WodWVTBK8OWtc+TFdSoHDs/2k1h9Jyz+kCdl3x5yoiARGo5SoAl6MXtvZkb5kNE8+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZT5qwd89xREQ7J6v0ACnYfvRQ/qpi3fB0jTEN2XEBiM=;
 b=gzbkmlHr1o+PJw3BTqyp6aG4OYxA4UchWSmklek5YYOIjP+iA+CLQl9rMJ4GKTDspk3drdkW2ckq4j5rxcdjXHc7boP4vw+lh9mdansjhR7veUenQBdDyS93YIlDP6QzgtlGwehzkP72wIiz/8H0UIvGom2mRTh1gVeUdKJAWL0=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4021.eurprd05.prod.outlook.com (2603:10a6:209:1f::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Mon, 4 May
 2020 11:28:38 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2958.029; Mon, 4 May 2020
 11:28:38 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon,  4 May 2020 18:28:25 +0700
Message-Id: <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: HK2PR02CA0211.apcprd02.prod.outlook.com
 (2603:1096:201:20::23) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR02CA0211.apcprd02.prod.outlook.com (2603:1096:201:20::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2958.19 via Frontend Transport; Mon, 4 May 2020 11:28:36 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe8d6722-299a-4c84-1bc5-08d7f01e4a3c
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4021:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB4021305FC95BD7D6A35D5A9EE2A60@AM6PR0502MB4021.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 03932714EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S0ECwYerk+tbit2+BMmYYPHz9QZlsIggC+cYTxbo+QGiO3YMVxWjyy4tYx1WrNNgGMtjlrz7bSeXYiisSc/0mMyfn7LjytFx2c8Y6nGePpbhUksXihViD0HES8AmLE2UQmuAuh8sdtCPm4r4URc6pvlwF7ikGuI+y6TsXtTCIxszSKpkC27dnKRkcXezrohLWT2wRWKczoWvoJKrKosiLJwnqlglfY25imy04PQSIU3qFb6fZwbyqZ8eaxoFlQ1NVMcv2UoBMl3KOnKCQD+VIyQ9QttnsqiZ70klfAwOhyjy3hFB6onV8ZRrMSsnXFTZGH72rMYoZa1oC8cTEJoNnRphNg2u5VujWo6RHgB4PmWY5tyCZVOeon38XihkCq18FjdOHyKbg+6RLNTLfbfOubBoxykduyCETwIkh1obj23WahgotekwXiT8dwM6A2AX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(366004)(396003)(39850400004)(2616005)(26005)(16526019)(316002)(956004)(36756003)(8936002)(7696005)(86362001)(6666004)(186003)(107886003)(103116003)(508600001)(8676002)(1076003)(2906002)(4326008)(5660300002)(66476007)(66556008)(55016002)(52116002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: v0r2fjjWd5/VORR5V+I09JzMDRcMyzin6ksMgCxKYHk3YODat5x+2Mf0ywJArcdlxqGSDvF44CQARAomIYFB7klMn1D2zb3rDKTPgANpzKEk6io+sXN3C188PnOtHchPN6pqOy4IedkIbVkZEdEIZuLMlq8mXZ48gY4dxy1lCJ0APYJfLCD5MuERbAOCqFbn3UtNE7IJnkyr5fYuIoSx3Q7+una737JFdzycPOY/gaSUjGN3UvwX45iM+ckkdQBy6qQGJU88gzBuoGWX+9GgJYnpkMymeKDB/lSGppTjcWAeCkb7oMKf6CNIlYKbxcTUJblR1+5R1vVvYLJrx3iQNDnKPaQyh1NKDEpaPnIabAHeb9QOzW/4ozT9/y5wRErMA8FOdeqpo8zp9653mb2Rt2as84EDw+i0xzV/wDPlcXYzrpwfuvDl5tIEdglpDF7Q0KOGsQPLA8nA3j9H0Kyc0jHiqbkR8E/IAFtgGM/zQfctc5D9lZiyxJuHgYuAUkcs0zRp7xxyqyyMAt21Y+SJ0ZQZXXLrkpk5a4fI5T2+rKS4xz/kle6Wb3ojvChUzk/bQR4EvNr+J4Sn5yHU9P3pUH23Pv6rFTyMkISO461QvuEyvceSDRL9Xf84hQNH8tfgo1o9nTxobXvad3EfAATtpTzLPt63Mg5TlFO6HecXWP6eFPrCIcTm/e7qyo2oAGDEZwJUwp0WUuOZtRkRjKUedLtXCmifNfAwGGbETsDkfazkF5epQTgnXErE9ngqF04cy8RHrRaNjMEeeFCyPtXBdfB7zizHWM4zSgGtwEU9wg8=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8d6722-299a-4c84-1bc5-08d7f01e4a3c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2020 11:28:38.3171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pi2D2maEw4ULyNZOhxrYmeWed3a6dwTY6B36jfS/InheCJcFQ7s6/VwMNAQOuv0OS0eebvsNZe6jYbuRfXiRLTpur6KljOVsBoMliY/sbxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4021
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVZVd-006gaO-Hs
Subject: [tipc-discussion] [RFC PATCH 1/2] tipc: fix large latency in smart
 Nagle streaming
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Currently when a connection is in Nagle mode, we set the 'ack_required'
bit in the last sending buffer and wait for the corresponding ACK prior
to pushing more data. However, on the receiving side, the ACK is issued
only when application actually gets the whole data. Even if part of the
last buffer is received, we will not do the ACK as required. This might
cause an unnecessary delay since the receiver does not always fetch the
message as fast as the sender, resulting in a large latency in the user
message sending, which is [one RTT + the receiver processing time].

The commit makes Nagle ACK as soon as possible i.e. when a message with
the 'ack_required' arrives in the receiving side's stack even before it
is processed / backlogged, put in the socket receive queue...
This way, we can limit the streaming latency to one RTT as committed in
Nagle mode.

v2: optimize code
v3: rebase to non debug
v4: rename patch subject

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 43 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 32 insertions(+), 11 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 693e8902161e..4e71774528ad 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1739,22 +1739,21 @@ static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
 	return 0;
 }
 
-static void tipc_sk_send_ack(struct tipc_sock *tsk)
+static struct sk_buff *tipc_sk_build_ack(struct tipc_sock *tsk)
 {
 	struct sock *sk = &tsk->sk;
-	struct net *net = sock_net(sk);
 	struct sk_buff *skb = NULL;
 	struct tipc_msg *msg;
 	u32 peer_port = tsk_peer_port(tsk);
 	u32 dnode = tsk_peer_node(tsk);
 
 	if (!tipc_sk_connected(sk))
-		return;
+		return NULL;
 	skb = tipc_msg_create(CONN_MANAGER, CONN_ACK, INT_H_SIZE, 0,
 			      dnode, tsk_own_node(tsk), peer_port,
 			      tsk->portid, TIPC_OK);
 	if (!skb)
-		return;
+		return NULL;
 	msg = buf_msg(skb);
 	msg_set_conn_ack(msg, tsk->rcv_unacked);
 	tsk->rcv_unacked = 0;
@@ -1764,7 +1763,20 @@ static void tipc_sk_send_ack(struct tipc_sock *tsk)
 		tsk->rcv_win = tsk_adv_blocks(tsk->sk.sk_rcvbuf);
 		msg_set_adv_win(msg, tsk->rcv_win);
 	}
-	tipc_node_xmit_skb(net, skb, dnode, msg_link_selector(msg));
+
+	return skb;
+}
+
+static void tipc_sk_send_ack(struct tipc_sock *tsk)
+{
+	struct sk_buff *skb;
+
+	skb = tipc_sk_build_ack(tsk);
+	if (!skb)
+		return;
+
+	tipc_node_xmit_skb(sock_net(&tsk->sk), skb, tsk_peer_node(tsk),
+			   msg_link_selector(buf_msg(skb)));
 }
 
 static int tipc_wait_for_rcvmsg(struct socket *sock, long *timeop)
@@ -1938,7 +1950,6 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 	bool peek = flags & MSG_PEEK;
 	int offset, required, copy, copied = 0;
 	int hlen, dlen, err, rc;
-	bool ack = false;
 	long timeout;
 
 	/* Catch invalid receive attempts */
@@ -1983,7 +1994,6 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Copy data if msg ok, otherwise return error/partial data */
 		if (likely(!err)) {
-			ack = msg_ack_required(hdr);
 			offset = skb_cb->bytes_read;
 			copy = min_t(int, dlen - offset, buflen - copied);
 			rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
@@ -2011,7 +2021,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Send connection flow control advertisement when applicable */
 		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
-		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
+		if (tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
 			tipc_sk_send_ack(tsk);
 
 		/* Exit if all requested data or FIN/error received */
@@ -2105,9 +2115,11 @@ static void tipc_sk_proto_rcv(struct sock *sk,
  * tipc_sk_filter_connect - check incoming message for a connection-based socket
  * @tsk: TIPC socket
  * @skb: pointer to message buffer.
+ * @xmitq: for Nagle ACK if any
  * Returns true if message should be added to receive queue, false otherwise
  */
-static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
+static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
+				   struct sk_buff_head *xmitq)
 {
 	struct sock *sk = &tsk->sk;
 	struct net *net = sock_net(sk);
@@ -2171,8 +2183,17 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
 		if (!skb_queue_empty(&sk->sk_write_queue))
 			tipc_sk_push_backlog(tsk);
 		/* Accept only connection-based messages sent by peer */
-		if (likely(con_msg && !err && pport == oport && pnode == onode))
+		if (likely(con_msg && !err && pport == oport &&
+			   pnode == onode)) {
+			if (msg_ack_required(hdr)) {
+				struct sk_buff *skb;
+
+				skb = tipc_sk_build_ack(tsk);
+				if (skb)
+					__skb_queue_tail(xmitq, skb);
+			}
 			return true;
+		}
 		if (!tsk_peer_msg(tsk, hdr))
 			return false;
 		if (!err)
@@ -2267,7 +2288,7 @@ static void tipc_sk_filter_rcv(struct sock *sk, struct sk_buff *skb,
 	while ((skb = __skb_dequeue(&inputq))) {
 		hdr = buf_msg(skb);
 		limit = rcvbuf_limit(sk, skb);
-		if ((sk_conn && !tipc_sk_filter_connect(tsk, skb)) ||
+		if ((sk_conn && !tipc_sk_filter_connect(tsk, skb, xmitq)) ||
 		    (!sk_conn && msg_connected(hdr)) ||
 		    (!grp && msg_in_group(hdr)))
 			err = TIPC_ERR_NO_PORT;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
