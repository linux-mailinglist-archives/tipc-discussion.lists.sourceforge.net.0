Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F1B1A8B6B
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 21:49:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jORYV-00012R-5i; Tue, 14 Apr 2020 19:49:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jORYT-00012K-Tt
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 19:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qV3/6Kwj2EuAHhcBE6Ys3jjBfaIVLg2+EhH+zRqCJbc=; b=NG+bhbvVBAhFJyYD07yiWKJg1k
 DTym6HasIrzuvUIh/FNR/mfJw7HCx/y1U3fGKOivKkBOsCXdoDpjDsThv5VD2+sNME6QmMKE/awO5
 m3GIVdD6zD1M/25fti9vdr9+PP/NK1pBflse+BamFkSDEQJle9qss4KFv+4CvlxF4/lM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qV3/6Kwj2EuAHhcBE6Ys3jjBfaIVLg2+EhH+zRqCJbc=; b=Skye+OeV9DhJvfCJTpAN12II2l
 YDadtaWCGxUFXUX7JrP01ISVorZ3NmxOrrcCVGQ+OKOUVLPfjh/7yWvm9+/TMqJu9Lar+i3/nlzQq
 E0hQM/z8SL3UVK7ibe1S7z/l2Sz4Q46yMbH4yZaZ99CDQ3bCnO/oNaNfn8xi+ZhydU4o=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jORYQ-00GNgW-IK
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 19:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586893740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qV3/6Kwj2EuAHhcBE6Ys3jjBfaIVLg2+EhH+zRqCJbc=;
 b=Cq4U7M+LvHMW9Q0hBPGvZUL2r970wRY7AncIULJAyvZ+qDHbupMRPEILL/41QJvi+uyBpo
 WeXhqKOAXdcHzfa8/EcTMoNPF3DJm76f3SunedDKZBpgvH/qoDEsxd5iCfjC3xaE46UCB+
 3W3OlYvZ9TkI9/cqZSpgILxl3wn5Va0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-yFtJhJ0NNtCWM8h9Rg9PbQ-1; Tue, 14 Apr 2020 15:48:58 -0400
X-MC-Unique: yFtJhJ0NNtCWM8h9Rg9PbQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 067DADB60;
 Tue, 14 Apr 2020 19:48:56 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9A265C1B2;
 Tue, 14 Apr 2020 19:48:54 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200327123103.4171-1-tuong.t.lien@dektech.com.au>
 <AM6PR0502MB3925EAAFF907C019A2685771E2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <17939171-d6e5-688f-fd6f-1c16d780d48b@redhat.com>
Date: Tue, 14 Apr 2020 15:48:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB3925EAAFF907C019A2685771E2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jORYQ-00GNgW-IK
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect increasing of link
 window
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hmm, I was sure I already did.
But anyway:

Acked-by: Jon Maloy <jmaloy@redhat.com>


On 4/14/20 3:54 AM, Tuong Tong Lien wrote:
> Hi Jon, all,
>
> I understand that you have agreed on the solution to the issue in previous discussions, but please make a formal "ack-by" so I will send it to net.
> Thanks a lot!
>
> BR/Tuong
>
> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: Friday, March 27, 2020 7:31 PM
> To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Cc: tipc-dek@dektech.com.au
> Subject: [net] tipc: fix incorrect increasing of link window
>
> In commit 16ad3f4022bb ("tipc: introduce variable window congestion
> control"), we allow link window to change with the congestion avoidance
> algorithm. However, there is a bug that during the slow-start if packet
> retransmission occurs, the link will enter the fast-recovery phase, set
> its window to the 'ssthresh' which is never less than 300, so the link
> window suddenly increases to that limit instead of decreasing.
>
> Consequently, two issues have been observed:
>
> - For broadcast-link: it can leave a gap between the link queues that a
> new packet will be inserted and sent before the previous ones, i.e. not
> in-order.
>
> - For unicast: the algorithm does not work as expected, the link window
> jumps to the slow-start threshold whereas packet retransmission occurs.
>
> This commit fixes the issues by avoiding such the link window increase,
> but still decreasing if the 'ssthresh' is lowered.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/link.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 467c53a1fb5c..d4675e922a8f 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1065,7 +1065,7 @@ static void tipc_link_update_cwin(struct tipc_link *l, int released,
>   	/* Enter fast recovery */
>   	if (unlikely(retransmitted)) {
>   		l->ssthresh = max_t(u16, l->window / 2, 300);
> -		l->window = l->ssthresh;
> +		l->window = min_t(u16, l->ssthresh, l->window);
>   		return;
>   	}
>   	/* Enter slow start */



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
