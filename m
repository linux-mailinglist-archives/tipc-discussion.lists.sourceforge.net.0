Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C021A0F6C
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Apr 2020 16:39:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLpNP-0000dB-E5; Tue, 07 Apr 2020 14:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jLpNO-0000d3-DH
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 14:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fr6x3NXqYbj8yvHOR1g0/y7WXwOgjHokki1uDhvB/2w=; b=fYxUIxxTYk6feStjaUtnYH+TId
 G1Llvdv4xvlFJZdGnprF5DVqTVh00u/yKzMKi8EA3TSXEVshFEEV8bajLvWf1TQUr3r3tvQmyCSfo
 SQd/nfeQ/Hc+8uJ96K54WetCo5YYT15bYizG7RBtzFXPXyzXOPDyi3XIOSsd12Z1Gt3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fr6x3NXqYbj8yvHOR1g0/y7WXwOgjHokki1uDhvB/2w=; b=iZCofBgmVv66aZIfiP3hmCcFhd
 ZUlBiYkkPkqi9pye+YJ6TBQzbc4O5qOGsZt9ONAeEGP7kvqKH0ljvmkVaAHkC6bJIVNy/+xUpHzmf
 A05JEV0bhojZSg9TZdlYxEclWoc5fXmxOoLpIL8NxYhQELPZUH3azsmQHQdFmQ4KxUSs=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jLpNK-00AUHN-KS
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 14:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586270323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fr6x3NXqYbj8yvHOR1g0/y7WXwOgjHokki1uDhvB/2w=;
 b=ACLg9rjjjsoQJvLJbbeOSre3WCIFv1A1BugC77ttQx+qUe6SVEoAiz1Zi5lErIiVJPqYrd
 I4AUtWogI+MbAFhy5t2M2HsEQg1OTSxSDAk1ovigm1RYOw5NIxeX01MvWZHhqOx2y53P/s
 3rwl2JN/qw2UJkKEFSgaKE6Al9Rs/ac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-ymhfiSjiN-uE-A13bZslJQ-1; Tue, 07 Apr 2020 10:38:39 -0400
X-MC-Unique: ymhfiSjiN-uE-A13bZslJQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DD87149D7;
 Tue,  7 Apr 2020 14:38:37 +0000 (UTC)
Received: from [10.10.112.107] (ovpn-112-107.rdu2.redhat.com [10.10.112.107])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A1CB5C545;
 Tue,  7 Apr 2020 14:38:32 +0000 (UTC)
To: "Xue, Ying" <Ying.Xue@windriver.com>,
 Tuong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <BY5PR11MB389475CFECDBBDE3395C8AED84C30@BY5PR11MB3894.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d0f46c12-0f08-4893-d741-54802c89059e@redhat.com>
Date: Tue, 7 Apr 2020 10:38:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BY5PR11MB389475CFECDBBDE3395C8AED84C30@BY5PR11MB3894.namprd11.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jLpNK-00AUHN-KS
Subject: Re: [tipc-discussion] [PATCH RFC 0/4] tipc: add some improvements
 for broadcast
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi all,
I have followed the discussion, and think Ying's concerns have been well =

responded to.
That switch is annoying, but I cannot see how we can get rid of it =

easily, at least for now.
My hunch is that retransmission by unicast will work well in smaller =

clusters, while broadcast may work better in larger clusters where there =

are more likely to be multiple losses. I.e., when one node reports a =

loss it is highly likely that even other nodes have experienced the same =

loss, so a broadcast retransmission may be more optimal. But we have no =

way of knowing this except from empirical data,=A0 and the optimal cluster =

size where to switch may vary from system to system and even depending =

on the overall load situation.

The best outcome would be if we could test this in large clusters and =

find that unicast always is best. Then no switch will be needed.
The second best, given the assumption above, would be some algorithm =

that auto-adapts (probably with hysteresis) and does the switch based on =

counters. E.g, number of identical unicast re-transmissions as a =

percentage of cluster size in the unicast->broadcast direction, and =

number of broadcast duplicates received by the peers in the =

broadcast->unicast direction. But my assumption may of course be totally =

wrong and a different algorithm is needed, or none at all.

Anyway,=A0 series
Acked by Jon Maloy <jmaloy@redhat.com>


On 4/7/20 2:52 AM, Xue, Ying wrote:
> Good work Tuong!
>
> Acked-by: Ying Xue <ying.xue@windriver.com>
>
> -----Original Message-----
> From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au]
> Sent: Saturday, March 28, 2020 12:03 PM
> To: jmaloy@redhat.com; maloy@donjonn.com; Xue, Ying; tipc-discussion@list=
s.sourceforge.net
> Cc: tipc-dek@dektech.com.au
> Subject: [PATCH RFC 0/4] tipc: add some improvements for broadcast
>
> Hi Jon, all,
>
> Please find the full series here,
> + For the 1st patch: it's really the last one I sent before, so you have
> ack-ed already.
> + For the other ones, please help take a look. Also, I will send another
> patch for iproute2/tipc which is user-space part of the last one in this
> series i.e. broadcast rcv stats dumping.
>
> Thanks alot!
>
> Tuong Lien (4):
>    tipc: introduce Gap ACK blocks for broadcast link
>    tipc: add back link trace events
>    tipc: enable broadcast retrans via unicast
>    tipc: add support for broadcast rcv stats dumping
>
>   net/tipc/bcast.c   |  22 ++-
>   net/tipc/bcast.h   |   9 +-
>   net/tipc/link.c    | 500 +++++++++++++++++++++++++++++++---------------=
-------
>   net/tipc/link.h    |  11 +-
>   net/tipc/msg.c     |   9 +-
>   net/tipc/msg.h     |  16 +-
>   net/tipc/netlink.c |   2 +-
>   net/tipc/node.c    |  75 ++++++--
>   net/tipc/sysctl.c  |   9 +-
>   net/tipc/trace.h   |  17 +-
>   10 files changed, 424 insertions(+), 246 deletions(-)
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
