Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA9D87142
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Aug 2019 07:12:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hvxC8-0005a2-Pc; Fri, 09 Aug 2019 05:12:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hvxC7-0005Zu-Dk
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 05:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qGaKs6z1lP+LigTRZcL50NvOMXPymJcLSM1ojCxJ3U4=; b=fQqaoZ/rHeWEiy4WTuGYL2s13d
 BfQVpD3gYFF59ep3Hy0jO3SJyl8Pzr+812/abrm96suUR7U/5AeXU7MMK8mC7cCpRU1zD/r+8wwxq
 wibVVMEIhVHJIzSsmIHzHSRnBRvMlzXBKB85BGCjjG5EC6u5af7A7u35xBRb/B28/23Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qGaKs6z1lP+LigTRZcL50NvOMXPymJcLSM1ojCxJ3U4=; b=Tzf7G2t06HKhMT0+368aGMQVON
 aNzY1cUT2+7sM1g1v2grHe+E9HPSSrQRH6nimMEyESgdnF5imLIYEC9n0/3klIzknwec86TXw1MO1
 ZmcSiYfQPRcOBqwjzi0XPoazR8LmpnbnNPNenj0A6YRyPQ1tsvK2NbwAFNzQZfdFpN/Q=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvxC4-00GtvC-2x
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 05:12:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5E24614284359;
 Thu,  8 Aug 2019 22:11:51 -0700 (PDT)
Date: Thu, 08 Aug 2019 22:11:50 -0700 (PDT)
Message-Id: <20190808.221150.639978383290842870.davem@davemloft.net>
To: john.rutherford@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190807025229.1599-1-john.rutherford@dektech.com.au>
References: <20190807025229.1599-1-john.rutherford@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 08 Aug 2019 22:11:51 -0700 (PDT)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hvxC4-00GtvC-2x
Subject: Re: [tipc-discussion] [net-next v3] tipc: add loopback device
 tracking
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: john.rutherford@dektech.com.au
Date: Wed,  7 Aug 2019 12:52:29 +1000

> From: John Rutherford <john.rutherford@dektech.com.au>
> 
> Since node internal messages are passed directly to the socket, it is not
> possible to observe those messages via tcpdump or wireshark.
> 
> We now remedy this by making it possible to clone such messages and send
> the clones to the loopback interface.  The clones are dropped at reception
> and have no functional role except making the traffic visible.
> 
> The feature is enabled if network taps are active for the loopback device.
> pcap filtering restrictions require the messages to be presented to the
> receiving side of the loopback device.
> 
> v3 - Function dev_nit_active used to check for network taps.
>    - Procedure netif_rx_ni used to send cloned messages to loopback device.
> 
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Acked-by: Ying Xue <ying.xue@windriver.com>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
