Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C6B18727F
	for <lists+tipc-discussion@lfdr.de>; Mon, 16 Mar 2020 19:39:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jDudp-0002wH-M5; Mon, 16 Mar 2020 18:39:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jDudo-0002w8-2p
 for tipc-discussion@lists.sourceforge.net; Mon, 16 Mar 2020 18:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mkt5TuHEK/p0E867adb8/WAoRlblvDQ9BDP3mZDkmMs=; b=UNV4k1HY5FU6vUhvcvFf9O3Mk
 C6DIYd/fThhX3AnC4dXJ6dgbcf5mWHHmwhU+IZyY33njn2wsKmuRykZoFdm7YdIQh1npRjGE3jOsm
 7QuDT3dMKWiYftTQQLV0mIVuXpNHL3+mULdEfZDShOfzpna4F5B6aRhO298oHqmT7VuP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mkt5TuHEK/p0E867adb8/WAoRlblvDQ9BDP3mZDkmMs=; b=aeMuHyQ1lehcCCAMVxIDh9SrM8
 ccHN9Rrs0GOqxHD1ZoSzQKVKxBOkBuMEUz0FW2y9EPvgGsdzMfn1bX3LeB2fQePRCF1tjRNDpwcwN
 ZsOkw56+HuJGeUY+DRVj/n6YIYtYD9FgSrMq6ezc2S3IzICynIUYLMTcJDglQUCfckKc=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jDude-003DKN-Vb
 for tipc-discussion@lists.sourceforge.net; Mon, 16 Mar 2020 18:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584383929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Mkt5TuHEK/p0E867adb8/WAoRlblvDQ9BDP3mZDkmMs=;
 b=DcVdQ9LXqdUrfpsIjrt2+jNKpmv2tJuPAu+VG0jlXc0TbwlSc/3Uw+gBvZDnY23ok6vN/0
 Nj898o6x3XfNojH7xR5uZaO229GxhUtOayP8n76M6NsHE3Tx/2JfmkBH/5i/JXixCFiwuP
 gXYy+U2sXj02pqkTFpAsjLGrIdF9fTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-dhbGQTteOlmCKZmZF9Izcg-1; Mon, 16 Mar 2020 14:20:08 -0400
X-MC-Unique: dhbGQTteOlmCKZmZF9Izcg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5571E10A2679;
 Mon, 16 Mar 2020 18:18:13 +0000 (UTC)
Received: from [10.10.125.13] (ovpn-125-13.rdu2.redhat.com [10.10.125.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 943AF93535;
 Mon, 16 Mar 2020 18:18:09 +0000 (UTC)
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, lxin@redhat.com
References: <20200313104728.2330-1-tuong.t.lien@dektech.com.au>
 <20200313104728.2330-2-tuong.t.lien@dektech.com.au>
 <04f76feb-d16d-b599-9945-fdbc8ce429ab@redhat.com>
 <00d101d5fb85$47d8f280$d78ad780$@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <88ca6a29-462d-119a-edc8-98417b3c686a@redhat.com>
Date: Mon, 16 Mar 2020 14:18:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <00d101d5fb85$47d8f280$d78ad780$@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jDude-003DKN-Vb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH RFC 1/2] tipc: add Gap ACK blocks
 support for broadcast link
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 3/16/20 7:23 AM, Tuong Lien Tong wrote:
>
> Hi Jon,
>
> I don=92t think that is because of retransmissions=85 also the =91time=92 =

> command will only measure the program=92s execution time, not the whole =

> system or kernel (nor a retransmission by kernel). I have repeated the =

> experiments and collected some statistics, so we can see things more =

> clearly:
>
> With the patch:
>
> 	=

>
> Without the patch:
>
> # time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
>
> real *0m 52.97s*
>
> user=A0=A0=A0 0m 1.12s
>
> sys=A0=A0=A0=A0 0m 17.35s
>
> # # tipc l st sh
>
> Link <broadcast-link>
>
> =A0 Window:50 packets
>
> =A0 RX packets:0 fragments:0/0 bundles:0/0
>
> =A0 TX packets:836930 fragments:0/0 bundles:98095/761165
>
> =A0 RX naks:0 defs:0 dups:0
>
> =A0 TX naks:0 acks:0 retrans:43874
>
> =A0 Congestion link:296=A0 Send queue max:0 avg:0
>
> 	=

>
> # time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
>
> real *5m 21.75s*
>
> user=A0=A0=A0 0m 0.67s
>
> sys=A0=A0=A0=A0 0m 2.13s
>
> # tipc l st sh
>
> Link <broadcast-link>
>
> =A0 Window:50 packets
>
> =A0 RX packets:0 fragments:0/0 bundles:0/0
>
> =A0 TX packets:218031 fragments:0/0 bundles:184629/1466598
>
> =A0 RX naks:0 defs:0 dups:0
>
> =A0 TX naks:0 acks:0 retrans:13235
>
> =A0 Congestion link:1923=A0 Send queue max:0 avg:0
>
> Yes, we had much more retransmissions but its ratio was really better: =

> 5.24% vs. 6.07%! In fact, we had fewer bundles due to less congestion=85
>
I see. The much lower occurrence of bundling explains it. The CPU has to =

drive
more than half of the messages individually down through the stack, =

something
taking much more cycles of course.

> Testing with a large message data size, we can see the difference more =

> accurately:
>
> With the patch:
>
> 	=

>
> Without the patch:
>
> time tipc-pipe --mc --rdm --data_size 1000 --data_num 1500000
>
> real *1m 6.81s*
>
> user=A0=A0=A0 0m 3.03s
>
> sys=A0=A0=A0=A0 0m 37.22s
>
> # tipc l st sh
>
> Link <broadcast-link>
>
> =A0 Window:50 packets
>
> =A0 RX packets:0 fragments:0/0 bundles:0/0
>
> =A0 TX packets:1500000 fragments:0/0 bundles:0/0
>
> =A0 RX naks:0 defs:0 dups:0
>
> =A0 TX naks:0 acks:0 retrans:*79505* //~ 5.30%
>
> =A0 Congestion link:249=A0 Send queue max:0 avg:0
>
> 	=

>
> # time tipc-pipe --mc --rdm --data_size 1000 --data_num 1500000
>
> ^CCommand terminated by signal 2=A0=A0 //I terminated it...
>
> real *35m 53.35s*
>
> user=A0=A0=A0 0m 1.41s
>
> sys=A0=A0=A0=A0 0m 8.36s
>
> # tipc l st sh
>
> Link <broadcast-link>
>
> =A0 Window:50 packets
>
> =A0 RX packets:0 fragments:0/0 bundles:0/0
>
> =A0 TX packets:1364457 fragments:0/0 bundles:0/0
>
> =A0 RX naks:0 defs:0 dups:0
>
> =A0 TX naks:0 acks:0 retrans:*90282* =A0//~6.62%
>
> =A0 Congestion link:11348=A0 Send queue max:0 avg:0
>
> Actually, we can explain your concern as follows: with the patch, the =

> =91transmq=92 is advanced faster, so sending messages is less likely to =

> face link congestion or window. That means, the program will not have =

> any =91relax=92 time but get involved in message xmit-ing to the link, l2 =

> layers=85 directly and it=92s counted as the =91sys=92 time. In contrary, =

> without the patch, the program =91send()=92 calls will shortly be returne=
d =

> because of link congestions and just have to wait + retry, but that=92s =

> user part! Obviously, the =91time=92 doesn=92t cover everything here, =

> especially the kernel work to complete the whole process (which is I =

> believe also better with the patch=85), but what's interesting is still =

> the real time that user will notice?
>
The improvement shown here is truly impressive. However, you are only =

showing tipc-pipe with small messages. How does this look when you send =

full-size 66k messages? How does it scale when the number of =

destinations grows up to tens or even hundreds? I am particularly =

concerned that the use of unicast retransmission may become a =

sub-optimization if the number of destinations is large.

///jon

> BR/Tuong
>
> *From:* Jon Maloy <jmaloy@redhat.com>
> *Sent:* Friday, March 13, 2020 10:47 PM
> *To:* Tuong Lien <tuong.t.lien@dektech.com.au>; =

> tipc-discussion@lists.sourceforge.net; maloy@donjonn.com; =

> ying.xue@windriver.com
> *Subject:* Re: [PATCH RFC 1/2] tipc: add Gap ACK blocks support for =

> broadcast link
>
> On 3/13/20 6:47 AM, Tuong Lien wrote:
>
>     As achieved through commit 9195948fbf34 ("tipc: improve TIPC throughp=
ut
>
>     by Gap ACK blocks"), we apply the same mechanism for the broadcast li=
nk
>
>     as well. The 'Gap ACK blocks' data field in a 'PROTOCOL/STATE_MSG' wi=
ll
>
>     consist of two parts built for both the broadcast and unicast types:
>
>       31=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 16 15=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A00
>
>     +-------------+-------------+-------------+-------------+
>
>     |=A0 bgack_cnt=A0 |=A0 ugack_cnt=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 len=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
>
>     +-------------+-------------+-------------+-------------+=A0 -
>
>     |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gap=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ack=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |=A0=A0 |
>
>     +-------------+-------------+-------------+-------------+=A0=A0=A0 > =
bc gacks
>
>     :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 :=A0=A0 |
>
>     +-------------+-------------+-------------+-------------+=A0 -
>
>     |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gap=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ack=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |=A0=A0 |
>
>     +-------------+-------------+-------------+-------------+=A0=A0=A0 > =
uc gacks
>
>     :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 :=A0=A0 |
>
>     +-------------+-------------+-------------+-------------+=A0 -
>
>     which is "automatically" backward-compatible.
>
>     We also increase the max number of Gap ACK blocks to 128, allowing up=
to
>
>     64 blocks per type (total buffer size =3D 516 bytes).
>
>     Besides, the 'tipc_link_advance_transmq()' function is refactored whi=
ch
>
>     is applicable for both the unicast and broadcast cases now, so some o=
ld
>
>     functions can be removed and the code is optimized.
>
>     With the patch, TIPC broadcast is more robust regardless of packet lo=
ss
>
>     or disorder, latency, ... in the underlying network. Its performance =
is
>
>     boost up significantly.
>
>     For example, experiment with a 5% packet loss rate results:
>
>     $ time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
>
>     real=A0=A0=A0 0m 42.46s
>
>     user=A0=A0=A0 0m 1.16s
>
>     sys=A0=A0=A0=A0 0m 17.67s
>
>     Without the patch:
>
>     $ time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
>
>     real=A0=A0=A0 5m 28.80s
>
>     user=A0=A0=A0 0m 0.85s
>
>     sys=A0=A0=A0=A0 0m 3.62s
>
> Can you explain this? To me it seems like the elapsed time is reduced
> with a factor 328.8/42.46=3D7.7, while we are consuming significantly
> more CPU to achieve this. Doesn't that mean that we have much more
> retransmissions which are consuming CPU? Or is there some other
> explanation?
>
> ///jon
>
>
>     Signed-off-by: Tuong Lien<tuong.t.lien@dektech.com.au>  <mailto:tuong=
.t.lien@dektech.com.au>
>
>     ---
>
>       net/tipc/bcast.c |=A0=A0 9 +-
>
>       net/tipc/link.c=A0 | 440 +++++++++++++++++++++++++++++++++---------=
-------------
>
>       net/tipc/link.h=A0 |=A0=A0 7 +-
>
>       net/tipc/msg.h=A0=A0 |=A0 14 +-
>
>       net/tipc/node.c=A0 |=A0 10 +-
>
>       5 files changed, 295 insertions(+), 185 deletions(-)
>
>     diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
>
>     index 4c20be08b9c4..3ce690a96ee9 100644
>
>     --- a/net/tipc/bcast.c
>
>     +++ b/net/tipc/bcast.c
>
>     @@ -474,7 +474,7 @@ void tipc_bcast_ack_rcv(struct net *net, struct t=
ipc_link *l,
>
>        __skb_queue_head_init(&xmitq);
>
>       =

>
>      =A0 tipc_bcast_lock(net);
>
>     - tipc_link_bc_ack_rcv(l, acked, &xmitq);
>
>     + tipc_link_bc_ack_rcv(l, acked, 0, NULL, &xmitq);
>
>        tipc_bcast_unlock(net);
>
>       =

>
>      =A0 tipc_bcbase_xmit(net, &xmitq);
>
>     @@ -492,6 +492,7 @@ int tipc_bcast_sync_rcv(struct net *net, struct t=
ipc_link *l,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct tipc_msg *hdr)
>
>       {
>
>        struct sk_buff_head *inputq =3D &tipc_bc_base(net)->inputq;
>
>     + struct tipc_gap_ack_blks *ga;
>
>        struct sk_buff_head xmitq;
>
>        int rc =3D 0;
>
>       =

>
>     @@ -501,8 +502,10 @@ int tipc_bcast_sync_rcv(struct net *net, struct =
tipc_link *l,
>
>        if (msg_type(hdr) !=3D STATE_MSG) {
>
>       =A0=A0=A0=A0=A0=A0=A0 tipc_link_bc_init_rcv(l, hdr);
>
>        } else if (!msg_bc_ack_invalid(hdr)) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr), &x=
mitq);
>
>     -=A0=A0=A0=A0=A0=A0=A0 rc =3D tipc_link_bc_sync_rcv(l, hdr, &xmitq);
>
>     +=A0=A0=A0=A0=A0=A0=A0 tipc_get_gap_ack_blks(&ga, l, hdr, false);
>
>     +=A0=A0=A0=A0=A0=A0=A0 rc =3D tipc_link_bc_ack_rcv(l, msg_bcast_ack(h=
dr),
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 msg_bc_gap(hdr), ga, &xmitq);
>
>     +=A0=A0=A0=A0=A0=A0=A0 rc |=3D tipc_link_bc_sync_rcv(l, hdr, &xmitq);
>
>        }
>
>        tipc_bcast_unlock(net);
>
>       =

>
>     diff --git a/net/tipc/link.c b/net/tipc/link.c
>
>     index 467c53a1fb5c..6198b6d89a69 100644
>
>     --- a/net/tipc/link.c
>
>     +++ b/net/tipc/link.c
>
>     @@ -188,6 +188,8 @@ struct tipc_link {
>
>        /* Broadcast */
>
>        u16 ackers;
>
>        u16 acked;
>
>     + u16 last_gap;
>
>     + struct tipc_gap_ack_blks *last_ga;
>
>        struct tipc_link *bc_rcvlink;
>
>        struct tipc_link *bc_sndlink;
>
>        u8 nack_state;
>
>     @@ -249,11 +251,14 @@ static int tipc_link_build_nack_msg(struct tipc=
_link *l,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0struct sk_buff_head *xmitq);
>
>       static void tipc_link_build_bc_init_msg(struct tipc_link *l,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 struct sk_buff_head *xmitq);
>
>     -static int tipc_link_release_pkts(struct tipc_link *l, u16 to);
>
>     -static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, =
u16 gap);
>
>     -static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked,=
 u16 gap,
>
>     +static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0 struct tipc_link *l, u8 start_index);
>
>     +static u16 tipc_build_gap_ack_blks(struct tipc_link *l, struct tipc_=
msg *hdr);
>
>     +static int tipc_link_advance_transmq(struct tipc_link *l, struct tip=
c_link *r,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 u16 acked, u16 gap,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0=A0struct tipc_gap_ack_blks *ga,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 struct sk_buff_head *xmitq);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 struct sk_buff_head *xmitq,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 bool *retransmitted, int *rc);
>
>       static void tipc_link_update_cwin(struct tipc_link *l, int released,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0bool retransmitted);
>
>       /*
>
>     @@ -370,7 +375,7 @@ void tipc_link_remove_bc_peer(struct tipc_link *s=
nd_l,
>
>        snd_l->ackers--;
>
>        rcv_l->bc_peer_is_up =3D true;
>
>        rcv_l->state =3D LINK_ESTABLISHED;
>
>     - tipc_link_bc_ack_rcv(rcv_l, ack, xmitq);
>
>     + tipc_link_bc_ack_rcv(rcv_l, ack, 0, NULL, xmitq);
>
>        trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
>
>        tipc_link_reset(rcv_l);
>
>        rcv_l->state =3D LINK_RESET;
>
>     @@ -784,8 +789,6 @@ bool tipc_link_too_silent(struct tipc_link *l)
>
>        return (l->silent_intv_cnt + 2 > l->abort_limit);
>
>       }
>
>       =

>
>     -static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_lin=
k *r,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 u16 from, u16 to, struct sk_buff_head *xmitq);
>
>       /* tipc_link_timeout - perform periodic task as instructed from nod=
e timeout
>
>      =A0 */
>
>       int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmi=
tq)
>
>     @@ -948,6 +951,9 @@ void tipc_link_reset(struct tipc_link *l)
>
>        l->snd_nxt_state =3D 1;
>
>        l->rcv_nxt_state =3D 1;
>
>        l->acked =3D 0;
>
>     + l->last_gap =3D 0;
>
>     + kfree(l->last_ga);
>
>     + l->last_ga =3D NULL;
>
>        l->silent_intv_cnt =3D 0;
>
>        l->rst_cnt =3D 0;
>
>        l->bc_peer_is_up =3D false;
>
>     @@ -1183,68 +1189,14 @@ static bool link_retransmit_failure(struct ti=
pc_link *l, struct tipc_link *r,
>
>       =

>
>      =A0 if (link_is_bc_sndlink(l)) {
>
>       =A0=A0=A0=A0=A0=A0=A0 r->state =3D LINK_RESET;
>
>     -=A0=A0=A0=A0=A0=A0=A0 *rc =3D TIPC_LINK_DOWN_EVT;
>
>     +=A0=A0=A0=A0=A0=A0=A0 *rc |=3D TIPC_LINK_DOWN_EVT;
>
>        } else {
>
>     -=A0=A0=A0=A0=A0=A0=A0 *rc =3D tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
>
>     +=A0=A0=A0=A0=A0=A0=A0 *rc |=3D tipc_link_fsm_evt(l, LINK_FAILURE_EVT=
);
>
>        }
>
>       =

>
>      =A0 return true;
>
>       }
>
>       =

>
>     -/* tipc_link_bc_retrans() - retransmit zero or more packets
>
>     - * @l: the link to transmit on
>
>     - * @r: the receiving link ordering the retransmit. Same as l if unic=
ast
>
>     - * @from: retransmit from (inclusive) this sequence number
>
>     - * @to: retransmit to (inclusive) this sequence number
>
>     - * xmitq: queue for accumulating the retransmitted packets
>
>     - */
>
>     -static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_lin=
k *r,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 u16 from, u16 to, struct sk_buff_head *xmitq)
>
>     -{
>
>     - struct sk_buff *_skb, *skb =3D skb_peek(&l->transmq);
>
>     - u16 bc_ack =3D l->bc_rcvlink->rcv_nxt - 1;
>
>     - u16 ack =3D l->rcv_nxt - 1;
>
>     - int retransmitted =3D 0;
>
>     - struct tipc_msg *hdr;
>
>     - int rc =3D 0;
>
>     -
>
>     - if (!skb)
>
>     -=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>     - if (less(to, from))
>
>     -=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>     -
>
>     - trace_tipc_link_retrans(r, from, to, &l->transmq);
>
>     -
>
>     - if (link_retransmit_failure(l, r, &rc))
>
>     -=A0=A0=A0=A0=A0=A0=A0 return rc;
>
>     -
>
>     - skb_queue_walk(&l->transmq, skb) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 hdr =3D buf_msg(skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (less(msg_seqno(hdr), from))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue;
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (more(msg_seqno(hdr), to))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt=
_retr))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue;
>
>     -=A0=A0=A0=A0=A0=A0=A0 TIPC_SKB_CB(skb)->nxt_retr =3D TIPC_BC_RETR_LI=
M;
>
>     -=A0=A0=A0=A0=A0=A0=A0 _skb =3D pskb_copy(skb, GFP_ATOMIC);
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (!_skb)
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>     -=A0=A0=A0=A0=A0=A0=A0 hdr =3D buf_msg(_skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0 msg_set_ack(hdr, ack);
>
>     -=A0=A0=A0=A0=A0=A0=A0 msg_set_bcast_ack(hdr, bc_ack);
>
>     -=A0=A0=A0=A0=A0=A0=A0 _skb->priority =3D TC_PRIO_CONTROL;
>
>     -=A0=A0=A0=A0=A0=A0=A0 __skb_queue_tail(xmitq, _skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0 l->stats.retransmitted++;
>
>     -=A0=A0=A0=A0=A0=A0=A0 retransmitted++;
>
>     -=A0=A0=A0=A0=A0=A0=A0 /* Increase actual retrans counter & mark firs=
t time */
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (!TIPC_SKB_CB(skb)->retr_cnt++)
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 TIPC_SKB_CB(skb)->retr=
_stamp =3D jiffies;
>
>     - }
>
>     - tipc_link_update_cwin(l, 0, retransmitted);
>
>     - return 0;
>
>     -}
>
>     -
>
>       /* tipc_data_input - deliver data and name distr msgs to upper layer
>
>      =A0 *
>
>      =A0 * Consumes buffer if message is of right type
>
>     @@ -1402,46 +1354,71 @@ static int tipc_link_tnl_rcv(struct tipc_link=
 *l, struct sk_buff *skb,
>
>        return rc;
>
>       }
>
>       =

>
>     -static int tipc_link_release_pkts(struct tipc_link *l, u16 acked)
>
>     -{
>
>     - int released =3D 0;
>
>     - struct sk_buff *skb, *tmp;
>
>     -
>
>     - skb_queue_walk_safe(&l->transmq, skb, tmp) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (more(buf_seqno(skb), acked))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>     -=A0=A0=A0=A0=A0=A0=A0 __skb_unlink(skb, &l->transmq);
>
>     -=A0=A0=A0=A0=A0=A0=A0 kfree_skb(skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0 released++;
>
>     +/**
>
>     + * tipc_get_gap_ack_blks - get Gap ACK blocks from PROTOCOL/STATE_MSG
>
>     + * @ga: returned pointer to the Gap ACK blocks if any
>
>     + * @l: the tipc link
>
>     + * @hdr: the PROTOCOL/STATE_MSG header
>
>     + * @uc: desired Gap ACK blocks type, i.e. unicast (=3D 1) or broadca=
st (=3D 0)
>
>     + *
>
>     + * Return: the total Gap ACK blocks size
>
>     + */
>
>     +u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc=
_link *l,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0 struct tipc_msg *h=
dr, bool uc)
>
>     +{
>
>     + struct tipc_gap_ack_blks *p;
>
>     + u16 sz =3D 0;
>
>     +
>
>     + /* Does peer support the Gap ACK blocks feature? */
>
>     + if (l->peer_caps & TIPC_GAP_ACK_BLOCK) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 p =3D (struct tipc_gap_ack_blks *)msg_data(hdr=
);
>
>     +=A0=A0=A0=A0=A0=A0=A0 sz =3D ntohs(p->len);
>
>     +=A0=A0=A0=A0=A0=A0=A0 /* Sanity check */
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (sz =3D=3D tipc_gap_ack_blks_sz(p->ugack_cn=
t + p->bgack_cnt)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Good, check if the =
desired type exists */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if ((uc && p->ugack_cn=
t) || (!uc && p->bgack_cnt))
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 goto ok;
>
>     +=A0=A0=A0=A0=A0=A0=A0 /* Backward compatible: peer might not support=
 bc, but uc? */
>
>     +=A0=A0=A0=A0=A0=A0=A0 } else if (uc && sz =3D=3D tipc_gap_ack_blks_s=
z(p->ugack_cnt)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (p->ugack_cnt) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 p->bgack_cnt =3D 0;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 goto ok;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0 }
>
>        }
>
>     - return released;
>
>     + /* Other cases: ignore! */
>
>     + p =3D NULL;
>
>     +
>
>     +ok:
>
>     + *ga =3D p;
>
>     + return sz;
>
>       }
>
>       =

>
>     -/* tipc_build_gap_ack_blks - build Gap ACK blocks
>
>     - * @l: tipc link that data have come with gaps in sequence if any
>
>     - * @data: data buffer to store the Gap ACK blocks after built
>
>     - *
>
>     - * returns the actual allocated memory size
>
>     - */
>
>     -static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, =
u16 gap)
>
>     +static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0 struct tipc_link *l, u8 start_index)
>
>       {
>
>     + struct tipc_gap_ack *gacks =3D &ga->gacks[start_index];
>
>        struct sk_buff *skb =3D skb_peek(&l->deferdq);
>
>     - struct tipc_gap_ack_blks *ga =3D data;
>
>     - u16 len, expect, seqno =3D 0;
>
>     + u16 expect, seqno =3D 0;
>
>        u8 n =3D 0;
>
>       =

>
>     - if (!skb || !gap)
>
>     -=A0=A0=A0=A0=A0=A0=A0 goto exit;
>
>     + if (!skb)
>
>     +=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>       =

>
>      =A0 expect =3D buf_seqno(skb);
>
>        skb_queue_walk(&l->deferdq, skb) {
>
>       =A0=A0=A0=A0=A0=A0=A0 seqno =3D buf_seqno(skb);
>
>       =A0=A0=A0=A0=A0=A0=A0 if (unlikely(more(seqno, expect))) {
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ga->gacks[n].ack =3D h=
tons(expect - 1);
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ga->gacks[n].gap =3D h=
tons(seqno - expect);
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (++n >=3D MAX_GAP_A=
CK_BLKS) {
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 pr_info_ratelimited("Too few Gap ACK blocks!\n");
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 goto exit;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gacks[n].ack =3D htons=
(expect - 1);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gacks[n].gap =3D htons=
(seqno - expect);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (++n >=3D MAX_GAP_A=
CK_BLKS / 2) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 char buf[TIPC_MAX_LINK_NAME];
>
>     +
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 pr_info_ratelimited("Gacks on %s: %d, ql: %d!\n",
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0 tipc_link_name_e=
xt(l, buf),
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0 n,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0 skb_queue_len(&l=
->deferdq));
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 return n;
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>       =A0=A0=A0=A0=A0=A0=A0 } else if (unlikely(less(seqno, expect))) {
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pr_warn("Unexpected s=
kb in deferdq!\n");
>
>     @@ -1451,14 +1428,57 @@ static u16 tipc_build_gap_ack_blks(struct tip=
c_link *l, void *data, u16 gap)
>
>        }
>
>       =

>
>      =A0 /* last block */
>
>     - ga->gacks[n].ack =3D htons(seqno);
>
>     - ga->gacks[n].gap =3D 0;
>
>     + gacks[n].ack =3D htons(seqno);
>
>     + gacks[n].gap =3D 0;
>
>        n++;
>
>     + return n;
>
>     +}
>
>       =

>
>     -exit:
>
>     - len =3D tipc_gap_ack_blks_sz(n);
>
>     +/* tipc_build_gap_ack_blks - build Gap ACK blocks
>
>     + * @l: tipc unicast link
>
>     + * @hdr: the tipc message buffer to store the Gap ACK blocks after b=
uilt
>
>     + *
>
>     + * The function builds Gap ACK blocks for both the unicast & broadca=
st receiver
>
>     + * links of a certain peer, the buffer after built has the network d=
ata format
>
>     + * as follows:
>
>     + *=A0 31=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 16 15=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A00
>
>     + * +-------------+-------------+-------------+-------------+
>
>     + * |=A0 bgack_cnt=A0 |=A0 ugack_cnt=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 len=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
>
>     + * +-------------+-------------+-------------+-------------+=A0 -
>
>     + * |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gap=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ack=A0=A0=A0 =A0=A0=A0=A0=A0=A0=
=A0=A0|=A0=A0 |
>
>     + * +-------------+-------------+-------------+-------------+=A0=A0=
=A0 > bc gacks
>
>     + * :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 :=A0=A0 |
>
>     + * +-------------+-------------+-------------+-------------+=A0 -
>
>     + * |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gap=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ack=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0 |
>
>     + * +-------------+-------------+-------------+-------------+=A0=A0=
=A0 > uc gacks
>
>     + * :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 :=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 :=A0=A0 |
>
>     + * +-------------+-------------+-------------+-------------+=A0 -
>
>     + * (See struct tipc_gap_ack_blks)
>
>     + *
>
>     + * returns the actual allocated memory size
>
>     + */
>
>     +static u16 tipc_build_gap_ack_blks(struct tipc_link *l, struct tipc_=
msg *hdr)
>
>     +{
>
>     + struct tipc_link *bcl =3D l->bc_rcvlink;
>
>     + struct tipc_gap_ack_blks *ga;
>
>     + u16 len;
>
>     +
>
>     + ga =3D (struct tipc_gap_ack_blks *)msg_data(hdr);
>
>     +
>
>     + /* Start with broadcast link first */
>
>     + tipc_bcast_lock(bcl->net);
>
>     + msg_set_bcast_ack(hdr, bcl->rcv_nxt - 1);
>
>     + msg_set_bc_gap(hdr, link_bc_rcv_gap(bcl));
>
>     + ga->bgack_cnt =3D __tipc_build_gap_ack_blks(ga, bcl, 0);
>
>     + tipc_bcast_unlock(bcl->net);
>
>     +
>
>     + /* Now for unicast link, but an explicit NACK only (???) */
>
>     + ga->ugack_cnt =3D (msg_seq_gap(hdr)) ?
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __tipc_build_gap_ack_b=
lks(ga, l, ga->bgack_cnt) : 0;
>
>     +
>
>     + /* Total len */
>
>     + len =3D tipc_gap_ack_blks_sz(ga->bgack_cnt + ga->ugack_cnt);
>
>        ga->len =3D htons(len);
>
>     - ga->gack_cnt =3D n;
>
>        return len;
>
>       }
>
>       =

>
>     @@ -1466,47 +1486,111 @@ static u16 tipc_build_gap_ack_blks(struct ti=
pc_link *l, void *data, u16 gap)
>
>      =A0 *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =A0=A0=A0=A0=A0=A0 acked packets, also doing retransmissions if
>
>      =A0 *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =A0=A0=A0=A0=A0=A0 gaps found
>
>      =A0 * @l: tipc link with transmq queue to be advanced
>
>     + * @r: tipc link "receiver" i.e. in case of broadcast (=3D "l" if un=
icast)
>
>      =A0 * @acked: seqno of last packet acked by peer without any gaps be=
fore
>
>      =A0 * @gap: # of gap packets
>
>      =A0 * @ga: buffer pointer to Gap ACK blocks from peer
>
>      =A0 * @xmitq: queue for accumulating the retransmitted packets if any
>
>     + * @retransmitted: returned boolean value if a retransmission is rea=
lly issued
>
>     + * @rc: returned code e.g. TIPC_LINK_DOWN_EVT if a repeated retransm=
it failures
>
>     + *=A0=A0=A0=A0=A0 happens (- unlikely case)
>
>      =A0 *
>
>     - * In case of a repeated retransmit failures, the call will return s=
hortly
>
>     - * with a returned code (e.g. TIPC_LINK_DOWN_EVT)
>
>     + * Return: the number of packets released from the link transmq
>
>      =A0 */
>
>     -static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked,=
 u16 gap,
>
>     +static int tipc_link_advance_transmq(struct tipc_link *l, struct tip=
c_link *r,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 u16 acked, u16 gap,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0=A0struct tipc_gap_ack_blks *ga,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 struct sk_buff_head *xmitq)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 struct sk_buff_head *xmitq,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 bool *retransmitted, int *rc)
>
>       {
>
>     + struct tipc_gap_ack_blks *last_ga =3D r->last_ga, *this_ga =3D NULL;
>
>     + struct tipc_gap_ack *gacks =3D NULL;
>
>        struct sk_buff *skb, *_skb, *tmp;
>
>        struct tipc_msg *hdr;
>
>     + u32 qlen =3D skb_queue_len(&l->transmq);
>
>     + u16 nacked =3D acked, ngap =3D gap, gack_cnt =3D 0;
>
>        u16 bc_ack =3D l->bc_rcvlink->rcv_nxt - 1;
>
>     - bool retransmitted =3D false;
>
>        u16 ack =3D l->rcv_nxt - 1;
>
>     - bool passed =3D false;
>
>     - u16 released =3D 0;
>
>        u16 seqno, n =3D 0;
>
>     - int rc =3D 0;
>
>     + u16 end =3D r->acked, start =3D end, offset =3D r->last_gap;
>
>     + u16 si =3D (last_ga) ? last_ga->start_index : 0;
>
>     + bool is_uc =3D !link_is_bc_sndlink(l);
>
>     + bool bc_has_acked =3D false;
>
>     +
>
>     + trace_tipc_link_retrans(r, acked + 1, acked + gap, &l->transmq);
>
>     +
>
>     + /* Determine Gap ACK blocks if any for the particular link */
>
>     + if (ga && is_uc) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 /* Get the Gap ACKs, uc part */
>
>     +=A0=A0=A0=A0=A0=A0=A0 gack_cnt =3D ga->ugack_cnt;
>
>     +=A0=A0=A0=A0=A0=A0=A0 gacks =3D &ga->gacks[ga->bgack_cnt];
>
>     + } else if (ga) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 /* Copy the Gap ACKs, bc part, for later renew=
al if needed */
>
>     +=A0=A0=A0=A0=A0=A0=A0 this_ga =3D kmemdup(ga, tipc_gap_ack_blks_sz(g=
a->bgack_cnt),
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0 GFP_ATOMIC);
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (likely(this_ga)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 this_ga->start_index =
=3D 0;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Start with the bc G=
ap ACKs */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gack_cnt =3D this_ga->=
bgack_cnt;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gacks =3D &this_ga->ga=
cks[0];
>
>     +=A0=A0=A0=A0=A0=A0=A0 } else {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Hmm, we can get in =
trouble..., simply ignore it */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pr_warn_ratelimited("I=
gnoring bc Gap ACKs, no memory\n");
>
>     +=A0=A0=A0=A0=A0=A0=A0 }
>
>     + }
>
>       =

>
>     + /* Advance the link transmq */
>
>        skb_queue_walk_safe(&l->transmq, skb, tmp) {
>
>       =A0=A0=A0=A0=A0=A0=A0 seqno =3D buf_seqno(skb);
>
>       =

>
>      =A0next_gap_ack:
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (less_eq(seqno, acked)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (less_eq(seqno, nacked)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (is_uc)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 goto release;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Skip packets peer h=
as already acked */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!more(seqno, r->ac=
ked))
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Get the next of las=
t Gap ACK blocks */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 while (more(seqno, end=
)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 if (!last_ga || si >=3D last_ga->bgack_cnt)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 start =3D end + offset + 1;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 end =3D ntohs(last_ga->gacks[si].ack);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 offset =3D ntohs(last_ga->gacks[si].gap);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 si++;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 WARN_ONCE(more(start, end) ||
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 (!offset &&
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0 si < last_ga->bgack_cnt) ||
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 si > MAX_GAP_ACK_BLKS,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 "Corrupted Gap ACK: %d %d %d %d %d\n",
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 start, end, offset, si,
>
>     +=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =A0 last_ga->bgack_cnt);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Check against the l=
ast Gap ACK block */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (in_range(seqno, st=
art, end))
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Update/release the =
packet peer is acking */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bc_has_acked =3D true;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (--TIPC_SKB_CB(skb)=
->ackers)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue;
>
>     +release:
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* release skb */
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __skb_unlink(skb, &l-=
>transmq);
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree_skb(skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 released++;
>
>     -=A0=A0=A0=A0=A0=A0=A0 } else if (less_eq(seqno, acked + gap)) {
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* First, check if rep=
eated retrans failures occurs? */
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!passed && link_re=
transmit_failure(l, l, &rc))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 return rc;
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 passed =3D true;
>
>     -
>
>     +=A0=A0=A0=A0=A0=A0=A0 } else if (less_eq(seqno, nacked + ngap)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* First gap: check if=
 repeated retrans failures? */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (unlikely(seqno =3D=
=3D acked + 1 &&
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0 link_retransmit_failure(l, r, rc))) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 /* Ignore this bc Gap ACKs if any */
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 kfree(this_ga);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 this_ga =3D NULL;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 break;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* retransmit skb if =
unrestricted*/
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (time_before(jiffi=
es, TIPC_SKB_CB(skb)->nxt_retr))
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue;
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 TIPC_SKB_CB(skb)->nxt_=
retr =3D TIPC_UC_RETR_TIME;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 TIPC_SKB_CB(skb)->nxt_=
retr =3D (is_uc) ?
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 TIPC_UC_RETR_TIME : TIPC_BC_RETR_LIM;
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _skb =3D pskb_copy(sk=
b, GFP_ATOMIC);
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!_skb)
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue;
>
>     @@ -1516,25 +1600,50 @@ static int tipc_link_advance_transmq(struct t=
ipc_link *l, u16 acked, u16 gap,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _skb->priority =3D TC=
_PRIO_CONTROL;
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __skb_queue_tail(xmit=
q, _skb);
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 l->stats.retransmitte=
d++;
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retransmitted =3D true;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *retransmitted =3D tru=
e;
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Increase actual re=
trans counter & mark first time */
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!TIPC_SKB_CB(skb)=
->retr_cnt++)
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 TIPC_SKB_CB(skb)->retr_stamp =3D jiffies;
>
>       =A0=A0=A0=A0=A0=A0=A0 } else {
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* retry with Gap ACK=
 blocks if any */
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!ga || n >=3D ga->=
gack_cnt)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (n >=3D gack_cnt)
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 break;
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 acked =3D ntohs(ga->ga=
cks[n].ack);
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gap =3D ntohs(ga->gack=
s[n].gap);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nacked =3D ntohs(gacks=
[n].ack);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ngap =3D ntohs(gacks[n=
].gap);
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 n++;
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto next_gap_ack;
>
>       =A0=A0=A0=A0=A0=A0=A0 }
>
>        }
>
>     - if (released || retransmitted)
>
>     -=A0=A0=A0=A0=A0=A0=A0 tipc_link_update_cwin(l, released, retransmitt=
ed);
>
>     - if (released)
>
>     -=A0=A0=A0=A0=A0=A0=A0 tipc_link_advance_backlog(l, xmitq);
>
>     - return 0;
>
>     +
>
>     + /* Renew last Gap ACK blocks for bc if needed */
>
>     + if (bc_has_acked) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (this_ga) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree(last_ga);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 r->last_ga =3D this_ga;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 r->last_gap =3D gap;
>
>     +=A0=A0=A0=A0=A0=A0=A0 } else if (last_ga) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (less(acked, start)=
) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 si--;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 offset =3D start - acked - 1;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } else if (less(acked,=
 end)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 acked =3D end;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (si < last_ga->bgac=
k_cnt) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 last_ga->start_index =3D si;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 r->last_gap =3D offset;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } else {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 kfree(last_ga);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 r->last_ga =3D NULL;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 r->last_gap =3D 0;
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0 } else {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 r->last_gap =3D 0;
>
>     +=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0 r->acked =3D acked;
>
>     + } else {
>
>     +=A0=A0=A0=A0=A0=A0=A0 kfree(this_ga);
>
>     + }
>
>     + return skb_queue_len(&l->transmq) - qlen;
>
>       }
>
>       =

>
>      =A0/* tipc_link_build_state_msg: prepare link state message for tran=
smission
>
>     @@ -1651,7 +1760,8 @@ int tipc_link_rcv(struct tipc_link *l, struct s=
k_buff *skb,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree_skb(skb);
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>       =A0=A0=A0=A0=A0=A0=A0 }
>
>     -=A0=A0=A0=A0=A0=A0=A0 released +=3D tipc_link_release_pkts(l, msg_ac=
k(hdr));
>
>     +=A0=A0=A0=A0=A0=A0=A0 released +=3D tipc_link_advance_transmq(l, l, =
msg_ack(hdr), 0,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 NULL, NULL=
, NULL, NULL);
>
>       =

>
>      =A0=A0=A0=A0=A0=A0=A0=A0 /* Defer delivery if sequence gap */
>
>       =A0=A0=A0=A0=A0=A0=A0 if (unlikely(seqno !=3D rcv_nxt)) {
>
>     @@ -1739,7 +1849,7 @@ static void tipc_link_build_proto_msg(struct ti=
pc_link *l, int mtyp, bool probe,
>
>       =A0=A0=A0=A0=A0=A0=A0 msg_set_probe(hdr, probe);
>
>       =A0=A0=A0=A0=A0=A0=A0 msg_set_is_keepalive(hdr, probe || probe_repl=
y);
>
>       =A0=A0=A0=A0=A0=A0=A0 if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 glen =3D tipc_build_ga=
p_ack_blks(l, data, rcvgap);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 glen =3D tipc_build_ga=
p_ack_blks(l, hdr);
>
>       =A0=A0=A0=A0=A0=A0=A0 tipc_mon_prep(l->net, data + glen, &dlen, mst=
ate, l->bearer_id);
>
>       =A0=A0=A0=A0=A0=A0=A0 msg_set_size(hdr, INT_H_SIZE + glen + dlen);
>
>       =A0=A0=A0=A0=A0=A0=A0 skb_trim(skb, INT_H_SIZE + glen + dlen);
>
>     @@ -2027,20 +2137,19 @@ static int tipc_link_proto_rcv(struct tipc_li=
nk *l, struct sk_buff *skb,
>
>       {
>
>        struct tipc_msg *hdr =3D buf_msg(skb);
>
>        struct tipc_gap_ack_blks *ga =3D NULL;
>
>     - u16 rcvgap =3D 0;
>
>     - u16 ack =3D msg_ack(hdr);
>
>     - u16 gap =3D msg_seq_gap(hdr);
>
>     + bool reply =3D msg_probe(hdr), retransmitted =3D false;
>
>     + u16 dlen =3D msg_data_sz(hdr), glen =3D 0;
>
>        u16 peers_snd_nxt =3D=A0 msg_next_sent(hdr);
>
>        u16 peers_tol =3D msg_link_tolerance(hdr);
>
>        u16 peers_prio =3D msg_linkprio(hdr);
>
>     + u16 gap =3D msg_seq_gap(hdr);
>
>     + u16 ack =3D msg_ack(hdr);
>
>        u16 rcv_nxt =3D l->rcv_nxt;
>
>     - u16 dlen =3D msg_data_sz(hdr);
>
>     + u16 rcvgap =3D 0;
>
>        int mtyp =3D msg_type(hdr);
>
>     - bool reply =3D msg_probe(hdr);
>
>     - u16 glen =3D 0;
>
>     - void *data;
>
>     + int rc =3D 0, released;
>
>        char *if_name;
>
>     - int rc =3D 0;
>
>     + void *data;
>
>       =

>
>      =A0 trace_tipc_proto_rcv(skb, false, l->name);
>
>        if (tipc_link_is_blocked(l) || !xmitq)
>
>     @@ -2137,13 +2246,7 @@ static int tipc_link_proto_rcv(struct tipc_lin=
k *l, struct sk_buff *skb,
>
>       =A0=A0=A0=A0=A0=A0=A0 }
>
>       =

>
>      =A0=A0=A0=A0=A0=A0=A0=A0 /* Receive Gap ACK blocks from peer if any =
*/
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (l->peer_caps & TIPC_GAP_ACK_BLOCK) {
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ga =3D (struct tipc_ga=
p_ack_blks *)data;
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 glen =3D ntohs(ga->len=
);
>
>     - =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* sanity check: if fail=
ed, ignore Gap ACK blocks */
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (glen !=3D tipc_gap=
_ack_blks_sz(ga->gack_cnt))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 ga =3D NULL;
>
>     -=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0 glen =3D tipc_get_gap_ack_blks(&ga, l, hdr, tr=
ue);
>
>       =

>
>      =A0=A0=A0=A0=A0=A0=A0=A0 tipc_mon_rcv(l->net, data + glen, dlen - gl=
en, l->addr,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0&l->mo=
n_state, l->bearer_id);
>
>     @@ -2158,9 +2261,14 @@ static int tipc_link_proto_rcv(struct tipc_lin=
k *l, struct sk_buff *skb,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tipc_link_build_proto=
_msg(l, STATE_MSG, 0, reply,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0rcvgap, 0, 0, xmitq);
>
>       =

>
>     -=A0=A0=A0=A0=A0=A0=A0 rc |=3D tipc_link_advance_transmq(l, ack, gap,=
 ga, xmitq);
>
>     +=A0=A0=A0=A0=A0=A0=A0 released =3D tipc_link_advance_transmq(l, l, a=
ck, gap, ga, xmitq,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0 &retransmitte=
d, &rc);
>
>       =A0=A0=A0=A0=A0=A0=A0 if (gap)
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 l->stats.recv_nacks++;
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (released || retransmitted)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tipc_link_update_cwin(=
l, released, retransmitted);
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (released)
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tipc_link_advance_back=
log(l, xmitq);
>
>       =A0=A0=A0=A0=A0=A0=A0 if (unlikely(!skb_queue_empty(&l->wakeupq)))
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 link_prepare_wakeup(l=
);
>
>        }
>
>     @@ -2246,10 +2354,7 @@ void tipc_link_bc_init_rcv(struct tipc_link *l=
, struct tipc_msg *hdr)
>
>       int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0struct sk_buff_=
head *xmitq)
>
>       {
>
>     - struct tipc_link *snd_l =3D l->bc_sndlink;
>
>        u16 peers_snd_nxt =3D msg_bc_snd_nxt(hdr);
>
>     - u16 from =3D msg_bcast_ack(hdr) + 1;
>
>     - u16 to =3D from + msg_bc_gap(hdr) - 1;
>
>        int rc =3D 0;
>
>       =

>
>      =A0 if (!link_is_up(l))
>
>     @@ -2271,8 +2376,6 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, =
struct tipc_msg *hdr,
>
>        if (more(peers_snd_nxt, l->rcv_nxt + l->window))
>
>       =A0=A0=A0=A0=A0=A0=A0 return rc;
>
>       =

>
>     - rc =3D tipc_link_bc_retrans(snd_l, l, from, to, xmitq);
>
>     -
>
>        l->snd_nxt =3D peers_snd_nxt;
>
>        if (link_bc_rcv_gap(l))
>
>       =A0=A0=A0=A0=A0=A0=A0 rc |=3D TIPC_LINK_SND_STATE;
>
>     @@ -2307,38 +2410,28 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l=
, struct tipc_msg *hdr,
>
>        return 0;
>
>       }
>
>       =

>
>     -void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0 struct sk_buff_hea=
d *xmitq)
>
>     +int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  struct tipc_gap_ack_b=
lks *ga,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  struct sk_buff_head *=
xmitq)
>
>       {
>
>     - struct sk_buff *skb, *tmp;
>
>     - struct tipc_link *snd_l =3D l->bc_sndlink;
>
>     + struct tipc_link *l =3D r->bc_sndlink;
>
>     + bool unused =3D false;
>
>     + int rc =3D 0;
>
>       =

>
>     - if (!link_is_up(l) || !l->bc_peer_is_up)
>
>     -=A0=A0=A0=A0=A0=A0=A0 return;
>
>     + if (!link_is_up(r) || !r->bc_peer_is_up)
>
>     +=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>       =

>
>     - if (!more(acked, l->acked))
>
>     -=A0=A0=A0=A0=A0=A0=A0 return;
>
>     + if (less(acked, r->acked) || (acked =3D=3D r->acked && !gap && !ga))
>
>     +=A0=A0=A0=A0=A0=A0=A0 return 0;
>
>       =

>
>     - trace_tipc_link_bc_ack(l, l->acked, acked, &snd_l->transmq);
>
>     - /* Skip over packets peer has already acked */
>
>     - skb_queue_walk(&snd_l->transmq, skb) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (more(buf_seqno(skb), l->acked))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>     - }
>
>     + trace_tipc_link_bc_ack(r, r->acked, acked, &l->transmq);
>
>     + tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc=
);
>
>       =

>
>     - /* Update/release the packets peer is acking now */
>
>     - skb_queue_walk_from_safe(&snd_l->transmq, skb, tmp) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (more(buf_seqno(skb), acked))
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>
>     -=A0=A0=A0=A0=A0=A0=A0 if (!--TIPC_SKB_CB(skb)->ackers) {
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __skb_unlink(skb, &snd=
_l->transmq);
>
>     - =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree_skb(skb);
>
>     -=A0=A0=A0=A0=A0=A0=A0 }
>
>     - }
>
>     - l->acked =3D acked;
>
>     - tipc_link_advance_backlog(snd_l, xmitq);
>
>     - if (unlikely(!skb_queue_empty(&snd_l->wakeupq)))
>
>     -=A0=A0=A0=A0=A0=A0=A0 link_prepare_wakeup(snd_l);
>
>     + tipc_link_advance_backlog(l, xmitq);
>
>     + if (unlikely(!skb_queue_empty(&l->wakeupq)))
>
>     +=A0=A0=A0=A0=A0=A0=A0 link_prepare_wakeup(l);
>
>     +
>
>     + return rc;
>
>       }
>
>       =

>
>      =A0/* tipc_link_bc_nack_rcv(): receive broadcast nack message
>
>     @@ -2366,8 +2459,7 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, =
struct sk_buff *skb,
>
>       =A0=A0=A0=A0=A0=A0=A0 return 0;
>
>       =

>
>      =A0 if (dnode =3D=3D tipc_own_addr(l->net)) {
>
>     -=A0=A0=A0=A0=A0=A0=A0 tipc_link_bc_ack_rcv(l, acked, xmitq);
>
>     -=A0=A0=A0=A0=A0=A0=A0 rc =3D tipc_link_bc_retrans(l->bc_sndlink, l, =
from, to, xmitq);
>
>     +=A0=A0=A0=A0=A0=A0=A0 rc =3D tipc_link_bc_ack_rcv(l, acked, to - ack=
ed, NULL, xmitq);
>
>       =A0=A0=A0=A0=A0=A0=A0 l->stats.recv_nacks++;
>
>       =A0=A0=A0=A0=A0=A0=A0 return rc;
>
>        }
>
>     diff --git a/net/tipc/link.h b/net/tipc/link.h
>
>     index d3c1c3fc1659..0a0fa7350722 100644
>
>     --- a/net/tipc/link.h
>
>     +++ b/net/tipc/link.h
>
>     @@ -143,8 +143,11 @@ int tipc_link_bc_peers(struct tipc_link *l);
>
>       void tipc_link_set_mtu(struct tipc_link *l, int mtu);
>
>       int tipc_link_mtu(struct tipc_link *l);
>
>       int tipc_link_mss(struct tipc_link *l);
>
>     -void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
>
>     -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0 struct sk_buff_hea=
d *xmitq);
>
>     +u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc=
_link *l,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0 struct tipc_msg *h=
dr, bool uc);
>
>     +int tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked, u16 gap,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  struct tipc_gap_ack_b=
lks *ga,
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  struct sk_buff_head *=
xmitq);
>
>       void tipc_link_build_bc_sync_msg(struct tipc_link *l,
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0struct sk_buff_head *xmitq);
>
>       void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hd=
r);
>
>     diff --git a/net/tipc/msg.h b/net/tipc/msg.h
>
>     index 6d466ebdb64f..9a38f9c9d6eb 100644
>
>     --- a/net/tipc/msg.h
>
>     +++ b/net/tipc/msg.h
>
>     @@ -160,20 +160,26 @@ struct tipc_gap_ack {
>
>       =

>
>      =A0/* struct tipc_gap_ack_blks
>
>      =A0 * @len: actual length of the record
>
>     - * @gack_cnt: number of Gap ACK blocks in the record
>
>     + * @bgack_cnt: number of Gap ACK blocks for broadcast in the record
>
>     + * @ugack_cnt: number of Gap ACK blocks for unicast (following the b=
roadcast
>
>     + *=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ones)
>
>     + * @start_index: starting index for "valid" broadcast Gap ACK blocks
>
>      =A0 * @gacks: array of Gap ACK blocks
>
>      =A0 */
>
>       struct tipc_gap_ack_blks {
>
>        __be16 len;
>
>     - u8 gack_cnt;
>
>     - u8 reserved;
>
>     + union {
>
>     +=A0=A0=A0=A0=A0=A0=A0 u8 ugack_cnt;
>
>     +=A0=A0=A0=A0=A0=A0=A0 u8 start_index;
>
>     + };
>
>     + u8 bgack_cnt;
>
>        struct tipc_gap_ack gacks[];
>
>       };
>
>       =

>
>      =A0#define tipc_gap_ack_blks_sz(n) (sizeof(struct tipc_gap_ack_blks)=
 + \
>
>       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0sizeof(struct tipc_gap_ack) * (n))
>
>       =

>
>     -#define MAX_GAP_ACK_BLKS=A0=A0=A0=A0=A0=A0 32
>
>     +#define MAX_GAP_ACK_BLKS=A0=A0=A0=A0=A0=A0 128
>
>       #define MAX_GAP_ACK_BLKS_SZ=A0=A0=A0 tipc_gap_ack_blks_sz(MAX_GAP_A=
CK_BLKS)
>
>       =

>
>      =A0static inline struct tipc_msg *buf_msg(struct sk_buff *skb)
>
>     diff --git a/net/tipc/node.c b/net/tipc/node.c
>
>     index 0c88778c88b5..eb6b62de81a7 100644
>
>     --- a/net/tipc/node.c
>
>     +++ b/net/tipc/node.c
>
>     @@ -2069,10 +2069,16 @@ void tipc_rcv(struct net *net, struct sk_buff=
 *skb, struct tipc_bearer *b)
>
>        le =3D &n->links[bearer_id];
>
>       =

>
>      =A0 /* Ensure broadcast reception is in synch with peer's send state=
 */
>
>     - if (unlikely(usr =3D=3D LINK_PROTOCOL))
>
>     + if (unlikely(usr =3D=3D LINK_PROTOCOL)) {
>
>     +=A0=A0=A0=A0=A0=A0=A0 if (unlikely(skb_linearize(skb))) {
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tipc_node_put(n);
>
>     +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto discard;
>
>     +=A0=A0=A0=A0=A0=A0=A0 }
>
>     +=A0=A0=A0=A0=A0=A0=A0 hdr =3D buf_msg(skb);
>
>       =A0=A0=A0=A0=A0=A0=A0 tipc_node_bc_sync_rcv(n, hdr, bearer_id, &xmi=
tq);
>
>     - else if (unlikely(tipc_link_acked(n->bc_entry.link) !=3D bc_ack))
>
>     + } else if (unlikely(tipc_link_acked(n->bc_entry.link) !=3D bc_ack))=
 {
>
>       =A0=A0=A0=A0=A0=A0=A0 tipc_bcast_ack_rcv(net, n->bc_entry.link, hdr=
);
>
>     + }
>
>       =

>
>      =A0 /* Receive packet directly if conditions permit */
>
>        tipc_node_read_lock(n);
>
> -- =

>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
