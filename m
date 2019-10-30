Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB85EA3EE
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 20:17:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPtSw-0005Ft-KS; Wed, 30 Oct 2019 19:17:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iPtSv-0005Fm-Ib
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 19:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c7NiXty0APr4O2Q34YaiaPp4SNHP7Axjavf1sY/jO0w=; b=SpgLmrsg+hShsZTYI+ySYruMNX
 LQfMlV9CfB1mea0vFvbQ1DPEXFvOtOucanMqOBfTvL3UNFuHMn5ZMge6L9tIXZVc9Y1xuG8voBwkJ
 ceNh/jG2KoHOB80Z+ILZj7jr5iy7yPl5xQvR3DrJgpowiCgKGmKu9TJdRK/E7/1umFsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c7NiXty0APr4O2Q34YaiaPp4SNHP7Axjavf1sY/jO0w=; b=XiYPqx+t2qeLMV+Dz5FlxRiRXo
 eueEYEur2Impv2rB4YlgqmWiVjaLFZcopsix+peyaCEZdIvdQsNrZu1xQyAresiL4XWFMl61FfWjM
 l4XJteJoLv26lMm+frrRWGctq89TzVrLWis26NajgNPpbSSMOKjmtNWoQQk74XLMIdEo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPtSt-00BHkZ-O2
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 19:17:09 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 00E3514B4DFD2;
 Wed, 30 Oct 2019 12:16:57 -0700 (PDT)
Date: Wed, 30 Oct 2019 12:16:57 -0700 (PDT)
Message-Id: <20191030.121657.2103053708806525889.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1572440441-474-1-git-send-email-jon.maloy@ericsson.com>
References: <1572440441-474-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 30 Oct 2019 12:16:58 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windreiver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iPtSt-00BHkZ-O2
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: add smart nagle feature
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
Cc: netdev@vger.kernel.org, lxin@redhat.com, edumazet@google.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jon.maloy@ericsson.com>
Date: Wed, 30 Oct 2019 14:00:41 +0100

> We introduce a feature that works like a combination of TCP_NAGLE and
> TCP_CORK, but without some of the weaknesses of those. In particular,
> we will not observe long delivery delays because of delayed acks, since
> the algorithm itself decides if and when acks are to be sent from the
> receiving peer.
> 
> - The nagle property as such is determined by manipulating a new
>   'maxnagle' field in struct tipc_sock. If certain conditions are met,
>   'maxnagle' will define max size of the messages which can be bundled.
>   If it is set to zero no messages are ever bundled, implying that the
>   nagle property is disabled.
> - A socket with the nagle property enabled enters nagle mode when more
>   than 4 messages have been sent out without receiving any data message
>   from the peer.
> - A socket leaves nagle mode whenever it receives a data message from
>   the peer.
> 
> In nagle mode, messages smaller than 'maxnagle' are accumulated in the
> socket write queue. The last buffer in the queue is marked with a new
> 'ack_required' bit, which forces the receiving peer to send a CONN_ACK
> message back to the sender upon reception.
> 
> The accumulated contents of the write queue is transmitted when one of
> the following events or conditions occur.
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
> This new feature gives a 50-100% improvement of throughput for small
> (i.e., less than MTU size) messages, while it might add up to one RTT
> to latency time when the socket is in nagle mode.
> 
> Acked-by: Ying Xue <ying.xue@windreiver.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied, thanks Jon.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
