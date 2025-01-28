
.. _quick_start:

Quick Start Guide
*************************************************

..  important:: 
    Although this example uses `Bonsai <https://bonsai-rx.org>`__
    and Windows, the commutator communicates over a serial connection using a
    simple :ref:`set of JSON commands <remote_control>` and therefore is
    software and operating system agnostic.

This quick start guide provides basic setup instructions to verify the
commutator's functionality. By following these steps, you will be able to turn
the commutator using keyboard presses from a  `Bonsai Visual Programming
Language <https://bonsai-rx.org>`__ workflow.

#.  If you have not already done so,

    *   `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_
    *   Open Bonsai and `install the Bonsai.StarterPack package <https://bonsai-rx.org/docs/articles/packages.html>`_ 

#.  Connect the commutator to computer using a USB-C (Micro-USB in older versions) cable to
    establish power and communication between the commutator and the computer. For this quick start
    guide, the commutated connections are not needed. In other words, the coax, coaxes,
    or 12-conductor Omnetics connector (depending on which commutator you have) can stay disconnected.

    ..  note:: 
        The commutator's RGB LED will flash red when the commutator is plugged in. 
        During this time, the commutator is charging an internal supercapacitor 
        bank that prevents the motor from loading the USB port. This can take up to 
        30 seconds to complete.

#.  Position the commutator such that the commutator's gears can rotate freely.

#.  Download and run the following .bonsai file (also known as a "workflow") for
    controlling the commutator using key presses:

    ..  raw:: html

        {% with static_path = './_static/', name = 'commutator-keypress-control' %}
            {% include 'workflow.html' %}
        {% endwith %}

#.  Configure the **PortName** property of the **SerialWriteLine** node to
    reflect the port to which the commutator is connected:

    *   In Bonsai, click the **SerialWriteLine** node and modify the **PortName** property
        (highlighted below).

        ..  image:: /_static/images/bonsai-keypress-comport.png

    *   The **PortName** property enumerates detected COM ports when the field is clicked. If
        multiple COM ports are available when the commutator is connected, try disconnecting and
        reconnecting your commutator. The COM port that disappears/reappears from the enumerated
        list when disconnecting/reconnecting your commutator is the one that corresponds to your
        commutator. Set **PortName** to this COM port.

#.  Run the workflow in Bonsai by pressing the green Start arrow.

    *   Et voilà! The commutator motor now rotates when the left and right arrow
        keys are pressed on the keyboard.
    *   The angular displacement per key-press can be adjusted by clicking the
        **String** nodes and modifying the **Value** property
    *   To see the JSON commands being sent to the commutator, double-click the
        **SerialWriteLine** node while the workflow is running to show a text
        visualizer.

After confirming its functionality, you are ready to :ref:`mount
the commutator <mounting>` and :ref:`automate commutation <automate-commutation>`.

